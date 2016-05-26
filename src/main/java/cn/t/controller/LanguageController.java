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

import cn.t.entity.Language;
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
	
	@RequestMapping(value = "saveLanguageInfo", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> addResume1(@ModelAttribute("Language") Language language,HttpSession httpsession) {
		int resultnum = langservice.addLanguage(language);
		String msg = "添加失败";
		if (resultnum > 0) {
			 msg = "添加成功";
		} 
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("code", "success");
		map.put("message", "添加语言成功");
		
		return map;
//		httpsession.setAttribute("msg", msg);
//		return "adminjsp/tjzp";
	}
	

}
