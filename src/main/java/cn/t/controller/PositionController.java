package cn.t.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@RequestMapping(value = "/frontjsp/poslist", method = RequestMethod.GET)
	public String getPoslist(HttpSession httpsession){
		System.out.println("postlist请求");
		List<Position> list = positionservice.getAllPos();
//		String msg="岗位列表";
		httpsession.setAttribute("poslist", list);
//		httpsession.setAttribute("msg", msg);
		System.out.println(list);
		return "frontjsp/zwlb";
		
		
	}
	@RequestMapping(value = "/adminjsp/poslist", method = RequestMethod.GET)
	public String getadminPoslist(HttpSession httpsession){
		System.out.println("postlist请求");
		List<Position> list = positionservice.getAllPos();
		String msg="";
		httpsession.setAttribute("poslist", list);
		httpsession.setAttribute("msg", msg);
		System.out.println(list);
		return "adminjsp/ckgw";
		
		
	}
	
	@RequestMapping(value = "/searchPos", method = RequestMethod.POST)
	public String searctPos(@RequestParam("posname") String posname,
			@RequestParam("company") String company,
			@RequestParam("dept") String dept,
			@RequestParam("place") String place,HttpSession httpsession){
		
		Map param = new HashMap();
		param.put("posname", posname);
		param.put("company", company);
		param.put("dept", dept);
		param.put("place", place);
		System.out.println(posname+company+dept+place);
		List<Position> list =positionservice.getByPosnameOrCompanyOrDeptOrPlace(param);
		httpsession.setAttribute("poslist", list);
		return "frontjsp/zwlb";
	}
	
	@RequestMapping(value = "adminjsp/addPos", method = RequestMethod.POST)
	public String addPos(@ModelAttribute("AdminUser") Position pos,HttpSession session,ModelMap map){
		String posnum=pos.getPosnum();
		String msg="添加";
		if(positionservice.getPosByPosnum(posnum)==null){
			int resultnum= positionservice.insertPos(pos);
			if(resultnum>0){
				msg="";
				return "redirect:poslist.do"; 
			}else{
				msg="添加失败";
			}
		}else{
			msg="该职位编号已经添加!";
		}
		session.setAttribute("msg", msg);
		return "adminjsp/tjgw"; 
	}

	@RequestMapping(value = "adminjsp/editPos", method = RequestMethod.POST)
	public String editPos(HttpSession session,HttpServletRequest request){
		String posnum = request.getParameter("posnum");
		session.setAttribute("pos", positionservice.getPosByPosnum(posnum));
		return "adminjsp/gwxg"; 
	}
	
	@RequestMapping(value = "adminjsp/delPos", method = RequestMethod.GET)
	public String delPos(HttpSession session,HttpServletRequest request){
		 String posnum = request.getParameter("posnum");
		 System.out.println(posnum);
		int resultnum= positionservice.delPos(posnum);
		String msg="删除失败";
		if(resultnum>0){
			msg="删除成功!";
		}
		session.setAttribute("msg", msg);
		return "redirect:poslist.do"; 
	}
}
