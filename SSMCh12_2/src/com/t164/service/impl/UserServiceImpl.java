package com.t164.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.t164.dao.UserDao;
import com.t164.entity.User;
import com.t164.service.UserService;
@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
    private UserDao userDao;
	@Override
	public User login(String name, String pwd) {
		User user=userDao.getUserByNameAndPwd(name, pwd);
		return user;
	}
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}
