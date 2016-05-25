package cn.t.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import cn.t.serviceI.EvaluationServiceI;

@Controller
public class EvaluationController {
	public EvaluationServiceI evaservice;

	public EvaluationServiceI getEvaservice() {
		return evaservice;
	}
	@Autowired
	public void setEvaservice(EvaluationServiceI evaservice) {
		this.evaservice = evaservice;
	}
	

}
