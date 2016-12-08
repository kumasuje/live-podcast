package edu.iu.livepodcast.write.service;


import edu.iu.livepodcast.models.FeedBackModel;
import edu.iu.livepodcast.models.PodcastModel;
import edu.iu.livepodcast.models.UserModel;

import java.util.List;

/**
 * Created by Sujeet on 12/2/16.
 */


public interface UserService {


    public void insertUser(UserModel userModel);
    public void insertFeedback(FeedBackModel feedBackModel);
    public void insertPodcast(PodcastModel podcastModel);
    public UserModel getUser(String userid);
    public List<PodcastModel> findAllPodcast();
}
