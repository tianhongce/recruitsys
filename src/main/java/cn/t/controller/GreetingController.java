package cn.t.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController {

	@RequestMapping(value = "/hello.do", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> hello() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("message", "Hello");
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
	}
}