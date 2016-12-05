package edu.iu.livepodcast.write.service.impl;


import edu.iu.livepodcast.Repository.UserQueryRepository;
import edu.iu.livepodcast.models.UserModel;
import edu.iu.livepodcast.write.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Sujeet on 12/2/16.
 */

@Service
public class UserQueryServiceImpl implements UserService {

    @Autowired
    private UserQueryRepository userQueryRepository;

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
    public UserModel getUser(String userId) {

        return userQueryRepository.findByUserid(userId);

    }
}
