package com.sakura.apacheshirodemo.service.impl;

import com.sakura.apacheshirodemo.mapper.UserMapper;
import com.sakura.apacheshirodemo.model.User;
import com.sakura.apacheshirodemo.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public User findByUsername(String username) {
        return userMapper.findByUsername(username);
    }
}
