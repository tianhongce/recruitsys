package cn.t.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.t.entity.Position;
import cn.t.serviceI.PositionServiceI;

@Controller
public class PositionController {
	private PositionServiceI positionservice;

	public PositionServiceI getPositionservice() {
		return positionservice;
	}

	@Autowired
	public void setPositionservice(PositionServiceI positionservice) {
		this.positionservice = positionservice;
	}
	
	@RequestMapping(value = "/poslist", method = RequestMethod.GET)
	public String getPoslist(HttpSession httpsession){
		System.out.println("postlist请求");
		List<Position> list = positionservice.getAllPos();
	
		httpsession.setAttribute("poslist", list);
		System.out.println(list);
		return "frontjsp/zwlb";
		
		
	}
	
	@RequestMapping(value = "/searchPos", method = RequestMethod.POST)
	public String searctPos(@RequestParam("posname") String posname,
			@RequestParam("company") String company,
			@RequestParam("dept") String dept,
			@RequestParam("place") String place){
		
		Map param = new HashMap();
		param.put("posname", "posname");
		param.put("company", "company");
		param.put("dept", "dept");
		param.put("place", "place");
		List<Position> list =positionservice.getByPosnameOrCompanyOrDeptOrPlace(param);
		return "frontjsp/zwlb";
	}
	
	@RequestMapping(value = "/addPos", method = RequestMethod.POST)
	public String addPos(Position pos){
		
		int a= positionservice.insertPos(pos);
		return "redirect:poslist.do"; 
	}

	@RequestMapping(value = "/editPos", method = RequestMethod.POST)
	public String editPos(Position pos){
		
		int a= positionservice.editPos(pos);
		return "redirect:poslist.do"; 
	}
	
	@RequestMapping(value = "/delPos", method = RequestMethod.POST)
	public String delPos(String posnum){
		
		int a= positionservice.delPos(posnum);
		return "redirect:poslist.do"; 
	}
}
