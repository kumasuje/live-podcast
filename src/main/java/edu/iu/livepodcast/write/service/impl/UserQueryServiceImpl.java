package edu.iu.livepodcast.write.service.impl;


import edu.iu.livepodcast.Repository.PodcastRepository;
import edu.iu.livepodcast.Repository.UserQueryRepository;
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

//    @Override
//    public void insertUserQueries(UserModel userQueryModel) {
//
//        UserQueryModel userQueryModel1 = userQueryRepository.findByTempUserUUID(userQueryModel.getTempUserUUID());
//        if(userQueryModel1 != null){
//            userQueryModel1.getQueries().addAll(userQueryModel.getQueries());
//            userQueryRepository.save(userQueryModel1);
//        }else{
//            userQueryRepository.save(userQueryModel);
//        }
//    }
//
//    @Override
//    public Iterable<UserQueryModel> getAllUserQueries() {
//
//        return userQueryRepository.findAll();
//    }

    @Override
    public void insertUser(UserModel userModel) {

        userQueryRepository.save(userModel);
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
