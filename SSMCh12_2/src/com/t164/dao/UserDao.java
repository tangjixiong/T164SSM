package com.t164.dao;

import org.apache.ibatis.annotations.Param;

import com.t164.entity.User;

public interface UserDao {
	public User getUserByNameAndPwd(@Param("name") String name,@Param("pwd") String pwd);
}
