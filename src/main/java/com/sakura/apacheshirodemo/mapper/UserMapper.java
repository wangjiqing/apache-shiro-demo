package com.sakura.apacheshirodemo.mapper;

import com.sakura.apacheshirodemo.model.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {

    User findByUsername(@Param("username") String username);
}
