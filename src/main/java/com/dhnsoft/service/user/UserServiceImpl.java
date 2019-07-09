package com.dhnsoft.service.user;

import com.dhnsoft.mapper.userMapper.UserMapper;
import com.dhnsoft.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;


    @Override
    public Integer userLogin(User user) {
         return userMapper.userLogin(user);
    }

    @Override
    public Integer signRepetition(String username) {
        return userMapper.signRepetition(username);
    }

    @Override
    public int addUserMsg(User user) {
        int rows=userMapper.addUserMsg(user);
        return rows;
    }
}
