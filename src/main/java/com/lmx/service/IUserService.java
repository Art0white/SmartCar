package com.lmx.service;

import com.lmx.entity.Equipment;
import com.lmx.entity.User;

import java.util.List;

public interface IUserService {
	public User login(String userNo, String password);

	public User getPassword(String userNo);
	
	public int modifyPassword(String userNo ,String password);

	public List<User> ufindAll();
}