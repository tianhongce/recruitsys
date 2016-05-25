package cn.t.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cn.t.entity.User;
import cn.t.serviceI.UserServiceI;

import com.google.code.kaptcha.Constants;

@Controller
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
	public ModelAndView register(HttpServletRequest request,
			@RequestParam("useremail") String useremail,
			@RequestParam("username") String username,
			@RequestParam("userpwd") String userpwd,
			@RequestParam("userpwd2") String userpwd2,
			@RequestParam("imgcode") String imgcode) {
		HttpSession session = request.getSession();
		String code = (String) session
				.getAttribute(Constants.KAPTCHA_SESSION_KEY);
		System.out.println("验证码: " + code);
		System.out.println("用户邮箱：" + useremail);
		System.out.println("用户密码："+userpwd);
		System.out.println("用户名："+username);
		User user=new User();
		user.setUseremail(useremail);
		user.setUsername(username);
		user.setUserpwd(userpwd);
		userservice.insertUserS(user);
		
		request.setAttribute("user", user);
		return new ModelAndView("frontjsp/login");

	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpServletRequest request,
			@RequestParam("useremail") String useremail,
			@RequestParam("userpwd") String userpwd,
			@RequestParam("imgcode") String imgcode,ModelMap model) {
		HttpSession session = request.getSession();
		String code = (String) session
				.getAttribute(Constants.KAPTCHA_SESSION_KEY);
//		System.out.println("验证码: " + code);
//		System.out.println("用户邮箱：" + useremail);
//		System.out.println(userpwd);
//		System.out.println(userpwd2);
//		User u = userservice.getUserById(1);
//		System.out.println("username"+u.getUsername());
		System.out.println(code);
		String msg="";
		if(!imgcode.equals(code)){
			 msg="验证码错误！";
			 System.out.println(msg);
			session.setAttribute("msg", msg);
//			model.addAttribute("msg", msg);
			return "frontjsp/login";
		}else{
			System.out.println(useremail);
			System.out.println(userservice.getUserByEmail(useremail));
			if(userservice.getUserByEmail(useremail)==null){
				 msg="此用户不存在！";
				 System.out.println(msg);
				session.setAttribute("msg", msg);
				return "frontjsp/login";
			}else{
				if(!userpwd.equals(userservice.getUserByEmail(useremail).getUserpwd())){
					msg="密码错误！";
					System.out.println(msg);
					session.setAttribute("msg", msg);
					return "frontjsp/login";
				}else{
					User user=userservice.getUserByEmail(useremail);
					System.out.println(user.getUsername());
					session.setAttribute("user", user);
					return "redirect:frontjsp/poslist.do";
				}
			}
		}


	}
}
