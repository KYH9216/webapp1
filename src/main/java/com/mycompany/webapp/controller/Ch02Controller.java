package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/ch02")//이거는 GetMapping , PostMapping 하면 안된다.
public class Ch02Controller {
	private static final Logger logger = 
			LoggerFactory.getLogger(Ch02Controller.class);
	@RequestMapping("/content")
	public String content() {
		logger.info("실행");
		return "ch02/content";
		
	}
	//@RequestMapping("/request1") Get과 Post 둘 다 지원
	@RequestMapping(value="/getMethod", method=RequestMethod.GET)
	// @RequestMapping(value="/request1", method=RequestMethod.POST)
	public String request1() {
		logger.info("실행");
		return "ch02/content";
		
	}
	//@RequestMapping(value="/postMethod", method=RequestMethod.POST)
	@PostMapping("/postMethod")//이것도 가능하다
	public String request2() {
		logger.info("실행");
		return "ch02/content";
		
	}
	
	//@RequestMapping(value="/join", method=RequestMethod.GET)
	@GetMapping("/join")
	public String joinForm() {
		logger.info("회원가입 양식을 보냄");
		return "ch02/joinForm";
		
	}
	
	@RequestMapping(value="/joinAsync", method=RequestMethod.GET)
	public String joinFormAsync() {
		logger.info("회원가입 양식을 보냄");
		return "ch02/joinFormAsync";
		
	}
	
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join() {
		logger.info("회원가입 처리함");
		return "ch02/content";
		
	}
	
	
}
