package cn.t.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.t.entity.Resume;
import cn.t.serviceI.ResumeServiceI;

@Controller
public class ResumeController {
	
	public ResumeServiceI resumeservice;

	public ResumeServiceI getResumeservice() {
		return resumeservice;
	}
	@Autowired
	public void setResumeservice(ResumeServiceI resumeservice) {
		this.resumeservice = resumeservice;
	}
	
	@RequestMapping(value = "fillResume", method = RequestMethod.POST)
	public Map<String,String> fillResume(){
		return null;
		
	}
	
	@RequestMapping(value = "frontjsp/addResume1", method = RequestMethod.POST)
//	@InitBinder  
	@ResponseBody
	public Map<String, String> addResume1(@ModelAttribute("Resume") Resume resume,HttpSession httpsession) {
		System.out.println(resume == null);
		System.out.println(resume.getUserid());
		int resultnum = resumeservice.addResume(resume);
		String msg = "添加失败";
		if (resultnum > 0) {
			 msg = "添加成功";
		} 
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("code", "success");
		map.put("message", "添加简历成功");
		
		return map;
//		httpsession.setAttribute("msg", msg);
//		return "adminjsp/tjzp";
		
		
	}
	
	@RequestMapping(value = "editResume", method = RequestMethod.POST)
	public String editResume(@ModelAttribute("Resume") Resume resume,HttpSession httpsession) {
		int resultnum = resumeservice.editResume(resume);
		String msg = "修改失败";
		if (resultnum > 1) {
			 msg = "修改成功";
		} 
		httpsession.setAttribute("msg", msg);
		return "adminjsp/tjzp";
	}
	
	@RequestMapping(value = "getResume", method = RequestMethod.POST)
	public String getResume(@RequestParam("userid") Integer userid,HttpSession httpsession) {
		List<Resume> resumelist=resumeservice.getByUserid(userid);
	
		httpsession.setAttribute("resumelist", resumelist);
		return "adminjsp/tjzp";
	}

	
	
	
	
	
	
	
}
