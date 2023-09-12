package com.project.matheasy.web;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.matheasy.service.ContVo;
import com.project.matheasy.service.Pager;
import com.project.matheasy.service.contService;
import com.project.matheasy.service.impl.service;

@Controller
public class RootController {

	@Autowired
	contService service;
	
	
	// 메인화면
	@GetMapping("/main")
	public String main() {
		return "main";
	}
	
	// 요금 안내
	@GetMapping("/price")
	public String price() {
		return "price";
	}
	
	// 지원 교재(썸네일)
	@GetMapping("/snlist")	
	public String snlist(Model model, Pager pager) {
		
		return "snlist";
	}
	
	// 리뷰 게시판
	@GetMapping("/reviewList")
	public String reviewList(Model model, Pager pager) {
		List<ContVo> list = service.list(pager);
		
		model.addAttribute("list", list);
		
		return "reviewList";
	}
	
	// 고객센터
	@GetMapping("/cs")
	public String cs() {
		return "cs";
	}
	
	// 로그인
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	
}
