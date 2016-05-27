package cn.t.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserResumeController {
	
	
	@RequestMapping(value = "/myInfo", method = RequestMethod.GET)
	public String myInfo(){
		
		return "frontjsp/jlresume";
	}
	
	@RequestMapping(value = "/fillResume", method = RequestMethod.GET)
	public String fillResume(){
		
		return "frontjsp/jlresume";
	}
	
	@RequestMapping(value = "/fillEducation", method = RequestMethod.GET)
	public String fillEducation(){
		
		return "frontjsp/jledu";
	}
	
	@RequestMapping(value = "/fillExperience", method = RequestMethod.GET)
	public String fillExperience(){
		
		return "frontjsp/jlexp";
	}
	
	@RequestMapping(value = "/fillLanguage", method = RequestMethod.GET)
	public String fillLanguage(){
		
		return "frontjsp/jllang";
	}
	
	@RequestMapping(value = "/fillEvaluation", method = RequestMethod.GET)
	public String fillEvaluation(){
		
		return "frontjsp/jleva";
	}
	
	@RequestMapping(value = "/myRecruit", method = RequestMethod.GET)
	public String myRecruit(){
		
		return "frontjsp/myrecruit1";
	}
	
	@RequestMapping(value = "/myApply", method = RequestMethod.GET)
	public String myApply(){
		
		return "frontjsp/myapply";
	}
	
	@RequestMapping(value = "/myAccount", method = RequestMethod.GET)
	public String myAccount(){
		
		return "frontjsp/myaccount";
	}
	
	@RequestMapping(value = "/myQuestion", method = RequestMethod.GET)
	public String myQuestion(){
		
		return "frontjsp/myquestion";
	}
	
	

}
