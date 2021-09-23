package com.lmx.service;

import com.lmx.entity.User;

public interface IUserService {
	public User login(String userNo, String password);

	public User getPassword(String userNo);
	
	public int modifyPassword(String userNo ,String password);
}