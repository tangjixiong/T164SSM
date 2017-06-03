package com.t164.service;

import org.apache.ibatis.annotations.Param;

import com.t164.entity.User;

public interface UserService {
	public User login(String name,String pwd);
}
