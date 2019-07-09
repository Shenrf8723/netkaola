package com.dhnsoft.mapper.userMapper;

import com.dhnsoft.po.User;

public interface UserMapper {
    public Integer userLogin(User user);
    public Integer signRepetition(String username);
    public int addUserMsg(User user);
}
