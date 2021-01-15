package com.koreait.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.koreait.service.BoardService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@Log4j
public class BoardController {
	
	@Setter(onMethod_ = @Autowired)
	private BoardService service;
	
	@GetMapping("/list")
	public String list(Model model) {
		
		log.info("list 호출되었습니다.....");
		model.addAttribute("list", service.getList()); //list 변수로 jsp 에 넘김
		return "/board/list"; // 절대경로 지정
		
	}// end of list()
	
	@GetMapping("/list2")
	public String list2(Model model) {
		
		log.info("list2 호출되었습니다.....");
		model.addAttribute("list", service.getList()); //list 변수로 jsp 에 넘김
		return "/board/list2"; // 절대경로 지정
	}

}
