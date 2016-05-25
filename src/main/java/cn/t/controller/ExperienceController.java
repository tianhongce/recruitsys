package cn.t.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

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
	

}
