package cn.t.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import cn.t.entity.Position;
import cn.t.serviceI.PositionServiceI;

@RestController
public class PositionController {
	private PositionServiceI positionservice;

	public PositionServiceI getPositionservice() {
		return positionservice;
	}

	@Autowired
	public void setPositionservice(PositionServiceI positionservice) {
		this.positionservice = positionservice;
	}
	
	@RequestMapping(value = "/testpos", method = RequestMethod.GET)
	public void testPos(){
		System.out.println("hello");
		
//		System.out.println(positionservice.getAllPos().get(1).getPosname());
//		System.out.println(positionservice.getAllPos().get(1).getCompany());
//		System.out.println(positionservice.getAllPos().get(0).getPosname());
//		System.out.println(positionservice.getAllPos().get(0).getCompany());
		
		Map param = new HashMap();
//		param.put("posname", "总经理");
		param.put("company", "曹磊");
//		param.put("dept", "营销");
		param.put("place", "北京");
		List<Position> list =positionservice.getByPosnameOrCompanyOrDeptOrPlace(param);
		System.out.println(list);
		
		
	}

}
