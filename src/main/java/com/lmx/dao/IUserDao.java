package com.lmx.dao;

import org.apache.ibatis.annotations.Param;
import com.lmx.entity.User;

public interface IUserDao {
    User queryById(int id);

    User login(User user);

    User getPassword(String userNo);

    int modifyPassword(@Param("userNo") String userNo, @Param("password") String password);
}
