package edu.iu.livepodcast.RestConterller;

import edu.iu.livepodcast.models.PodcastModel;
import edu.iu.livepodcast.models.UserModel;
import edu.iu.livepodcast.write.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.corundumstudio.socketio.*;
import com.corundumstudio.socketio.listener.DataListener;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;


/**
 * Created by Sujeet on 11/9/16.
 */

@Controller
@SessionAttributes({"userDetail","podcastDeatils"})
public class homeController {


    @Autowired
    private UserService userService;

    @RequestMapping(value = "/home_page")
    public String getHome(){

        return "home_page";
    }

    @RequestMapping(value = "/")
    public String getHomePage(){

        return "home_page";
    }

    @RequestMapping(value = "/discover")
    public String getDiscover(ModelMap userModelMap){

        UserModel userModel = (UserModel) userModelMap.get("userDetail");

        if(userModel == null) return "error_login_to_view";

        List<PodcastModel> podcastModel = (List<PodcastModel>) userModelMap.get("podcastDeatils");

        if(podcastModel == null){

            List<PodcastModel> getPodcastModel = userService.findAllPodcast();
            userModelMap.addAttribute("podcastDeatils",getPodcastModel);
            System.out.println("--- adding disvoer models "+getPodcastModel.size());
        }

        return "discover";
    }

    @RequestMapping(value = "/feedback")
    public String feedback(){

        return "feedback";
    }

    @RequestMapping(value = "/about_us")
    public String getAboutUS(){

        return "about_us";
    }

    @RequestMapping(value = "/live")
    public String getLiveFeeds(ModelMap userModelMap){

        UserModel userModel = (UserModel) userModelMap.get("userDetail");
        if(userModel == null) return "error_login_to_view";

        return "live";
    }


    @RequestMapping(value = "/profile")
    public String getProfile(ModelMap userModelMap){

        UserModel userModel = (UserModel) userModelMap.get("userDetail");

        if(userModel == null) return "error_login_to_view";
        System.out.println(" getting attribute ");
        System.out.println(((UserModel) userModelMap.get("userDetail")).getName());
        return "profile";
    }


    @RequestMapping(value = "/log_in")
    public String getLogin(){

        return "log_in";
    }



}
