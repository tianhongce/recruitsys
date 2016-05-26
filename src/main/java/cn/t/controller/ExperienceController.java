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

import cn.t.entity.Experience;
import cn.t.serviceI.ExperienceServiceI;

@Controller
public class ExperienceController {
	public ExperienceServiceI expservice;

	public ExperienceServiceI getExpservice() {
		return expservice;
	}
	@Autowired
	public void setExpservice(ExperienceServiceI expservice) {
		this.expservice = expservice;
	}
	
	@RequestMapping(value = "saveExperienceInfo", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> addResume1(@ModelAttribute("Experience") Experience experience,HttpSession httpsession) {
		int resultnum = expservice.addExperience(experience);
		String msg = "添加失败";
		if (resultnum > 0) {
			 msg = "添加成功";
		} 
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("code", "success");
		map.put("message", "添加工作经历成功");
		
		return map;
//		httpsession.setAttribute("msg", msg);
//		return "adminjsp/tjzp";
	}

}
