package edu.iu.livepodcast.RestConterller;

import edu.iu.livepodcast.models.PodcastModel;
import edu.iu.livepodcast.models.UserModel;
import edu.iu.livepodcast.write.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Paths;
import java.util.UUID;

/**
 * Created by Sujeet on 12/4/16.
 */

@Controller
@SessionAttributes({"userDetail","user"})
public class LoginController {

    @Autowired
    private UserService userService;

    @Value("${resource.indexed.folder.name}")
    private String pictureDirectoryPath;

    @Value("${resource.pic.folder.name}")
    private String getPictureDbPath;

    @RequestMapping(value ="/registerNewUser",method = RequestMethod.POST)
    public String signUp(UserModel userModel, @RequestParam("file") MultipartFile uploadfile,ModelMap userModelMap) {

        try {
        UUID randonPicUuid = UUID.randomUUID();

        String filename = randonPicUuid.toString();
        String filepath = Paths.get(pictureDirectoryPath, filename).toString()+".jpg";

        // Save the file locally
        BufferedOutputStream stream =
                new BufferedOutputStream(new FileOutputStream(new File(filepath)));
        stream.write(uploadfile.getBytes());
        stream.close();

        userModel.setProfilePic(getPictureDbPath+"/"+randonPicUuid.toString()+".jpg");

//        System.out.println(" ----- " + uploadfile.getOriginalFilename());
//        PodcastModel podcastModel = new PodcastModel();
//        podcastModel.setAudioLink("http://ella.ils.indiana.edu/~kumasuje/audio/pod1.mp3");
//        podcastModel.setImgLink("http://ella.ils.indiana.edu/~kumasuje/images/friends.jpg");
//
//        podcastModel.setPodcastDis("This podcast describes the type of crowd in your university. THis includes the diversity of students, detailed description of the faculty and staff.");
//        podcastModel.setPodcastName("Academia");

            userService.insertUser(userModel);
            userModelMap.addAttribute("userDetail",userModel);
            userModelMap.addAttribute("user",userModel.getName());

        }  catch (Exception e) {
            System.out.println(e.getMessage());
            //return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

      //  userService.insertPodcast(podcastModel);
        return "profile";

    }

    @RequestMapping(value ="/loginUser",method = RequestMethod.POST)
    public String login(UserModel userModel, ModelMap userModelMap) {

        UserModel returnedUserModel = userService.getUser(userModel.getUserid());

        if(returnedUserModel !=null && returnedUserModel.getPassword().equals(userModel.getPassword()))
        {
            System.out.println("added model ");
            userModelMap.addAttribute("userDetail",returnedUserModel);
            userModelMap.addAttribute("user",returnedUserModel.getName());
            return "home_page";
        }else {

            return "error_retry";
        }
    }

    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<?> uploadFile(
            @RequestParam("file") MultipartFile uploadfile) {

        try {
            System.out.println(" ----- "+uploadfile.getOriginalFilename());
            // Get the filename and build the local file path (be sure that the
            // application have write permissions on such directory)
            String filename = uploadfile.getOriginalFilename();
            String directory = "/Users/Manish/Pictures/new";
            String filepath = Paths.get(directory, filename).toString();

            // Save the file locally
            BufferedOutputStream stream =
                    new BufferedOutputStream(new FileOutputStream(new File(filepath)));
            stream.write(uploadfile.getBytes());
            stream.close();
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(HttpStatus.OK);
    }


//    @PostMapping("/upload")
//    public String handleFileUpload(@RequestParam("file") MultipartFile file,
//                                   RedirectAttributes redirectAttributes) {
//
//        storageService.store(file);
//        redirectAttributes.addFlashAttribute("message",
//                "You successfully uploaded " + file.getOriginalFilename() + "!");
//
//        return "redirect:/";
//    }


    @RequestMapping(value = "/logout")
    public String doLogout(HttpSession session, Model model) {
        session.invalidate();
        if (model.containsAttribute("counter"))
            model.asMap().remove("counter");
        model.asMap().clear();

        System.out.println("Logout controller called.");
        return "log_in";
    }
}
