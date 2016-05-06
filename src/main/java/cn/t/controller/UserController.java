package cn.t.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cn.t.entity.User;
import cn.t.serviceI.UserServiceI;

import com.google.code.kaptcha.Constants;

@RestController
public class UserController {
	private UserServiceI userservice;
	
	public UserServiceI getUserservice() {
		return userservice;
	}

	@Autowired
	public void setUserservice(UserServiceI userservice) {
		this.userservice = userservice;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public void register(HttpServletRequest request,
			@RequestParam("useremail") String useremail,
			@RequestParam("userpwd") String userpwd,
			@RequestParam("userpwd2") String userpwd2,
			@RequestParam("imgcode") String imgcode) {
		HttpSession session = request.getSession();
		String code = (String) session
				.getAttribute(Constants.KAPTCHA_SESSION_KEY);
		System.out.println("验证码: " + code);
		System.out.println("用户邮箱：" + useremail);
		System.out.println(userpwd);
		System.out.println(userpwd2);
		User u = userservice.getUserById(1);
		
		System.out.println("username"+u.getUsername());

	}
}
