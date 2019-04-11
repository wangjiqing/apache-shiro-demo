package com.sakura.apacheshirodemo.service;

import com.sakura.apacheshirodemo.model.User;

public interface UserService {
    User findByUsername(String username);
}
