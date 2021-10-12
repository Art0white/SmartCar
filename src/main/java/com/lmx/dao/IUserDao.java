package com.lmx.dao;

import com.lmx.entity.Equipment;
import org.apache.ibatis.annotations.Param;
import com.lmx.entity.User;

import java.util.List;

public interface IUserDao {
    User queryById(int id);

    User login(User user);

    User getPassword(String userNo);

    List<User> ufindAll();

    int modifyPassword(@Param("userNo") String userNo, @Param("password") String password);
}
