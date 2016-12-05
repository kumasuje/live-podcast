package edu.iu.livepodcast.RestConterller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.corundumstudio.socketio.*;
import com.corundumstudio.socketio.listener.DataListener;


/**
 * Created by Sujeet on 11/9/16.
 */

@Controller
public class homeController {

    SocketIOServer socketIOServer = null;

    @RequestMapping(value = "/home_page")
    public String getHome(){

        return "home_page";
    }

    @RequestMapping(value = "/discover")
    public String getDiscover(){

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
    public String getLiveFeeds(){

        return "live";
    }


    @RequestMapping(value = "/profile")
    public String getProfile(){

        return "profile";
    }


    @RequestMapping(value = "/log_in")
    public String getLogin(){

        return "log_in";
    }



}
