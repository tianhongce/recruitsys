package cn.t.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class BaseController {
	@ExceptionHandler(value = Throwable.class)
	public ResponseEntity<Map<String, Object>> handleThrowable(Throwable e) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("message", e.getLocalizedMessage());
		return new ResponseEntity<Map<String, Object>>(map,
				HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
}