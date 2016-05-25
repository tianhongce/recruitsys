package cn.t.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

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
	
}
