package edu.iu.livepodcast.write.service;


import edu.iu.livepodcast.models.UserModel;

/**
 * Created by Sujeet on 12/2/16.
 */


public interface UserService {


    public void insertUser(UserModel userModel);
    public UserModel getUser(String userid);
}
