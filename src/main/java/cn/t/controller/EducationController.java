package cn.t.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.t.entity.Education;
import cn.t.serviceI.EducationServiceI;

@Controller	
public class EducationController {

	public EducationServiceI educationservice;

	public EducationServiceI getEducationservice() {
		return educationservice;
	}
	@Autowired
	public void setEducationservice(EducationServiceI educationservice) {
		this.educationservice = educationservice;
	}
	
	@RequestMapping(value = "saveEducationInfo", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> addResume1(@ModelAttribute("Education") Education edu,HttpSession httpsession) {
		System.out.println(edu.getSchool());
		System.out.println(edu.getMajor());
		int resultnum = educationservice.addEducation(edu);
		String msg = "添加失败";
		if (resultnum > 0) {
			 msg = "添加成功";
		} 
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("code", "success");
		map.put("message", "添加教育经历成功");
		
		return map;
//		httpsession.setAttribute("msg", msg);
//		return "adminjsp/tjzp";
	}
}
