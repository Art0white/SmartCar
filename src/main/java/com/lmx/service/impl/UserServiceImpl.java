package com.lmx.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lmx.dao.IUserDao;
import com.lmx.entity.User;
import com.lmx.service.IUserService;

//使用者
@Service
public class UserServiceImpl implements IUserService{
	
	@Autowired
	private IUserDao userDao;
	
	public User login(String userNo, String password) {
		// TODO Auto-generated method stub
		User user = new User();
		user.setUserNo(userNo);
		user.setPassword(password);
		User currentUser = userDao.login(user);
		return currentUser;
	}

	public User getPassword(String userNo) {
		User currentUser = userDao.getPassword(userNo);
		
		return currentUser;
	}

	public int modifyPassword(String userNo, String password) {
		// TODO Auto-generated method stub
		int num = userDao.modifyPassword(userNo, password);
		return num;
	}






}
