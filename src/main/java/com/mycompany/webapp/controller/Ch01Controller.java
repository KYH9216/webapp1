package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

//http://webapp1/ch01 로 요청이 오는걸 ch01Controller로 받겠다.
@RequestMapping("/ch01")
public class Ch01Controller {
	private static final Logger logger = 
			LoggerFactory.getLogger(Ch01Controller.class);
	
	//http://.../webapp1/ch01/content
	@RequestMapping("/content")
	public String log() {
		logger.info("실행");
		return "ch01/content";
	}
	
}
