package edu.iu.livepodcast.models;

import org.springframework.data.annotation.Id;
import org.springframework.stereotype.Component;

/**
 * Created by Sujeet on 12/2/16.
 */

@Component
public class FeedBackModel {

    @Id
    private String userid;

    private String name;

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    private String email;
    private String feedback;

}
