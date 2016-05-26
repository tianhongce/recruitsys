package cn.t.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.t.entity.UserPosition;
import cn.t.serviceI.UserPositionServiceI;

@Controller
public class UserPosController {
	
	public UserPositionServiceI userposservice;

	public UserPositionServiceI getUserposservice() {
		return userposservice;
	}
	@Autowired
	public void setUserposservice(UserPositionServiceI userposservice) {
		this.userposservice = userposservice;
	}
	
	@RequestMapping(value = "addUserPos", method = RequestMethod.POST)
	public String addUserPos(@RequestParam("userid") Integer userid,@RequestParam("posnum") String posnum){
		UserPosition userpos = new UserPosition();
		userpos.setPosnum(posnum);
		userpos.setUserid(userid);
		userpos.setStatus("未审核");
		int resultnum =	userposservice.addUserPos(userpos);
		String msg="岗位申请失败";
		if(resultnum>0){
			msg="岗位申请成功";
		}
		return "";
	}
	
	@RequestMapping(value = "reviewUserPos", method = RequestMethod.POST)
	public String reviewUserPos(@ModelAttribute("UserPosition") UserPosition userpos){
		int resultnum =	userposservice.changeUserPosState(userpos);
		String msg="审核失败";
		if(resultnum>0){
			msg="审核成功";
		}
		return "";
	}

	@RequestMapping(value = "delUserPos", method = RequestMethod.POST)
	public String delUserPos(@RequestParam("jobappid") Integer jobappid){
		int resultnum =	userposservice.delUserPos(jobappid);
		String msg="删除失败";
		if(resultnum>0){
			msg="删除成功";
		}
		return "";
	}
	
	@RequestMapping(value = "adminjsp/listUserPos", method = RequestMethod.GET)
	public String listUserPos(HttpSession session){
		List<UserPosition> userposlist=userposservice.getAllUserPos();
		session.setAttribute("userposlist", userposlist);
		String msg="删除失败";
		return "adminjsp/scgw";
	}
}
