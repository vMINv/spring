package com.spring.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller 
public class BookController {
	
	@Autowired//의존성 주입
	BookService bookService;
	
	@GetMapping("/create")
	public ModelAndView createMethod() {
		
		return new ModelAndView("book/create");
	}
	
	@PostMapping("/create")//경로
	public ModelAndView create(@RequestParam Map<String, Object> map) {//메소드 속성은 http 요청 메소드 의미
		
		ModelAndView mav = new ModelAndView();
		
		String bookId = this.bookService.create(map);
		
		if(bookId==null) {
			mav.setViewName("redirect:/create");
		} else {
			//mav.setViewName("redirect:/detail?bookId=" + bookId);//detail 아직
			mav.setViewName("redirect:/create");
		}
		return mav;
	}
}
