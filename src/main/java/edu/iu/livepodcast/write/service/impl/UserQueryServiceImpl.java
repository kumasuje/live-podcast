package edu.iu.livepodcast.write.service.impl;


import edu.iu.livepodcast.Repository.FeedBackRepository;
import edu.iu.livepodcast.Repository.PodcastRepository;
import edu.iu.livepodcast.Repository.UserQueryRepository;
import edu.iu.livepodcast.models.FeedBackModel;
import edu.iu.livepodcast.models.PodcastModel;
import edu.iu.livepodcast.models.UserModel;
import edu.iu.livepodcast.write.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by Sujeet on 12/2/16.
 */

@Service
public class UserQueryServiceImpl implements UserService {

    @Autowired
    private UserQueryRepository userQueryRepository;

    @Autowired
    private PodcastRepository podcastRepository;

    @Autowired
    private FeedBackRepository feedBackRepository;


    @Override
    public void insertUser(UserModel userModel) {

        userQueryRepository.save(userModel);
    }

    @Override
    public void insertFeedback(FeedBackModel feedBackModel) {

        feedBackRepository.save(feedBackModel);
    }

    @Override
    public void insertPodcast(PodcastModel podcastModel) {

        podcastRepository.save(podcastModel);
    }

    @Override
    public UserModel getUser(String userId) {

        return userQueryRepository.findByUserid(userId);

    }

    @Override
    public List<PodcastModel> findAllPodcast() {

        List<PodcastModel> returnResult = new ArrayList<PodcastModel>();
        Iterator<PodcastModel> result = podcastRepository.findAll().iterator();

        while(result.hasNext()){

            returnResult.add(result.next());
        }

        return returnResult;
    }
}
