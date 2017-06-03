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
@RequestMapping("/user")
public class UserController {
	@Resource(name="userService")
	private UserService userService;
	//登录功能
	@RequestMapping("/login.html")
	public String login(String userCode,String userPassword,HttpSession session,Model model){
		User user=userService.login(userCode,userPassword);
		if(user!=null){//登录成功
			session.setAttribute(Constants.USER_SESSION, user);
			return "redirect:/sys/frame.html";
		}else{
			model.addAttribute("message", "用户名或密码错误");
			return "../../login";
		}
	}
	
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

}
