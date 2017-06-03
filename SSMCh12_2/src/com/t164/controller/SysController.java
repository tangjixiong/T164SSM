package com.t164.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.t164.entity.User;
import com.t164.service.UserService;
import com.t164.util.Constants;

@Controller
@RequestMapping("/sys")
public class SysController {
	@RequestMapping("/frame.html")
	public String toFrame(){
		return "frame";
	}
	@RequestMapping("/userList.html")
	public String touserList(){
		return "userlist";
	}
	

}
