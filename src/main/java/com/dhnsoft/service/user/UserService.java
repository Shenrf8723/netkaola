package com.dhnsoft.service.user;

import com.dhnsoft.po.User;

public interface UserService {
    public Integer userLogin(User user);
    public Integer signRepetition(String username);
    public int addUserMsg(User user);

}
