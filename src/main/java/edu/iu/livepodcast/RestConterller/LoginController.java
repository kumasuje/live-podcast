package edu.iu.livepodcast.RestConterller;

import edu.iu.livepodcast.models.UserModel;
import edu.iu.livepodcast.write.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Sujeet on 12/4/16.
 */

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value ="/registerNewUser",method = RequestMethod.POST)
    public String signUp(UserModel userModel) {

        userService.insertUser(userModel);

        return "profile";

    }

    @RequestMapping(value ="/loginUser",method = RequestMethod.POST)
    public String login(UserModel userModel) {

        UserModel returnedUserModel = userService.getUser(userModel.getUserid());
        if(returnedUserModel !=null && returnedUserModel.getPassword().equals(userModel.getPassword()))
        {
            return "home_page";
        }else {

            return "error_retry";
        }
    }
}
