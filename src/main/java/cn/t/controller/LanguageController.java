package cn.t.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import cn.t.serviceI.LanguageServiceI;

@Controller
public class LanguageController {
	public LanguageServiceI langservice;

	public LanguageServiceI getLangservice() {
		return langservice;
	}
	@Autowired
	public void setLangservice(LanguageServiceI langservice) {
		this.langservice = langservice;
	}
	

}
