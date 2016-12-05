package edu.iu.livepodcast.models;

import org.springframework.data.annotation.Id;
import org.springframework.stereotype.Component;

/**
 * Created by Sujeet on 12/2/16.
 */

@Component
public class UserModel {

    @Id
    private String userid;

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    private String emailid;
    private String password;

}
