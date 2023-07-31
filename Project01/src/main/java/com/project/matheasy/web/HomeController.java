package com.project.matheasy.web;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/matheasy.do")
	public String home() {
		System.out.println("홈화면입니다~");
		return "home";
	}
	
	
	
	
}
