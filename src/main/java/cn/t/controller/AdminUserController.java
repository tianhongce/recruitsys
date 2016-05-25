package cn.t.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.t.entity.AdminUser;
import cn.t.serviceI.AdminUserServiceI;

@Controller
public class AdminUserController {

	public AdminUserServiceI aus;

	public AdminUserServiceI getAus() {
		return aus;
	}

	@Autowired
	public void setAus(AdminUserServiceI aus) {
		this.aus = aus;
	}

	@RequestMapping(value = "adminjsp/addAdminUser", method = RequestMethod.POST)
	public String addAdminUser(@ModelAttribute("AdminUser") AdminUser auser,
			ModelMap model
			) {
//		try{
			String auserid=auser.getAuserid();
			System.out.println(auserid);
			String msg = "添加失败";
			if(aus.getAdminUserById(auserid) != null){
				msg="此员工编号已添加！";
			}else{
				int resultnum = aus.addAdminUser(auser);
				System.out.println(resultnum);
				if (resultnum > 0) {
					 msg = "添加成功";
				} 
				
			}
//			httpsession.setAttribute("msg", msg);
			model.addAttribute("msg", msg);
			return "adminjsp/tjzp";
//		}catch(Exception e){
//			String msg = "添加失败";
//			int resultnum = aus.addAdminUser(auser);
//			System.out.println(resultnum);
//			if (resultnum > 0) {
//				 msg = "添加成功";
//			} 
//			httpsession.setAttribute("msg", msg);
//			return "adminjsp/tjzp";
//		}
		
	}

	@RequestMapping(value = "adminjsp/listAllAdminUser", method = RequestMethod.GET)
	public String listAdminUser(HttpSession httpsession) {
		List<AdminUser> list = aus.getAllAdminUser();
		httpsession.setAttribute("adminuserlist", list);
		return "adminjsp/zplb";
	}

	@RequestMapping(value = "adminjsp/searchAdminUser", method = RequestMethod.POST)
	public String searchAdminUser(@RequestParam("auserid") String auserid,
			@RequestParam("ausername") String ausername,
			@RequestParam("adept") String adept,
			@RequestParam("acompany") String acompany,
			@RequestParam("apow") String apow, HttpSession httpsession) {
		Map param = new HashMap();
		param.put("auserid", "auserid");
		param.put("ausername", "ausername");
		param.put("adept", "adept");
		param.put("acompany", "acompany");
		List<AdminUser> list = aus.getByIdorNameorDeptorComorPow(param);
		httpsession.setAttribute("adminuserlist", list);
		return "adminjsp/zplb";
	}

	@RequestMapping(value = "adminjsp/dellAdminUser", method = RequestMethod.POST)
	public String dellAdminUser(@RequestParam("auserid") String auserid,HttpSession httpsession) {
		int resultnum = aus.delAdminUser(auserid);
		String msg = "删除失败";
		if (resultnum > 1) {
			 msg = "删除成功";
		} 
		httpsession.setAttribute("msg", msg);
		return "adminjsp/zplb";
	}
	
	@RequestMapping(value = "adminjsp/editAdminUser", method = RequestMethod.POST)
	public String editAdminUser(@ModelAttribute("AdminUser") AdminUser auser,HttpSession httpsession) {
		int resultnum = aus.editAdminUser(auser);
		String msg = "修改失败";
		if (resultnum > 1) {
			 msg = "修改成功";
		} 
		httpsession.setAttribute("msg", msg);
		return "adminjsp/tjzp";
	}
	
	@RequestMapping(value = "adminlogin", method = RequestMethod.POST)
	public String login() {
		return "adminjsp/login";
	}
	
	@RequestMapping(value = "adminjsp/verifyAdminUser", method = RequestMethod.POST)
	public String verifyAdminUser(@RequestParam("auserid") String auserid,@RequestParam("auserpwd") String auserpwd,HttpSession session) {
		String msg = "账号或密码错误";
		if(auserpwd.equals(aus.getAdminUserById(auserid).getAuserpwd())){
			msg="登陆成功";
			session.setAttribute("ausername", aus.getAdminUserById(auserid).getAusername());
			session.setAttribute("auserid", aus.getAdminUserById(auserid).getAuserid());
			session.setAttribute("auser", aus.getAdminUserById(auserid));
		}
		session.setAttribute("msg", msg);
		System.out.println(aus.getAdminUserById(auserid).getApow()+"登陆");
		if(("超级管理员".equals(aus.getAdminUserById(auserid).getApow()))){
			return "redirect:listAllAdminUser.do";
		}else{
			return "adminjsp/grxx";
		}
		
	}
	
	@RequestMapping(value = "adminjsp/getAdminUser", method = RequestMethod.POST)
	public String getAdminUser(@RequestParam("auserid") String auserid,HttpSession session) {
		AdminUser auser=(AdminUser)session.getAttribute("auser");
		session.setAttribute("auser", auser);
		return "adminjsp/grxx";
	}
}
