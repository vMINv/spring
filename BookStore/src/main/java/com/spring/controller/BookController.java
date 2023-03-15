package com.spring.controller;

import java.util.List;
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
	
	@RequestMapping("/")
	public String main() {
		return "redirect:/list";
	}
	
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
			mav.setViewName("redirect:/detail?bookId=" + bookId);
		}
		return mav;
	}
	
	@GetMapping("/detail")
	public ModelAndView detail(@RequestParam Map<String, Object> map) {
		Map<String, Object> detailMap = this.bookService.detail(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("data", detailMap);
		String bookId = map.get("bookId").toString();
		mav.addObject("bookId", bookId);
		mav.setViewName("book/detail");
		
		return mav;
	}
	
	@GetMapping("/update")
	public ModelAndView update(@RequestParam Map<String, Object> map) {
		Map<String, Object> detailMap = this.bookService.detail(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("data", detailMap);
		String bookId = map.get("bookId").toString();
		mav.addObject("bookId", bookId);
		mav.setViewName("book/update");
		
		return mav;
	}
	
	@PostMapping("/update")
	public ModelAndView updatePost(@RequestParam Map<String, Object> map) {
		
		ModelAndView mav = new ModelAndView();
		
		boolean isUpdateSuccess = this.bookService.update(map);
		if(isUpdateSuccess) {
			String bookId = map.get("bookId").toString();
			mav.setViewName("redirect:/detail?bookId=" + bookId);
		} else {
			mav = this.update(map);
		}
		return mav;
	}
	
	@RequestMapping("/list")
	public ModelAndView list(@RequestParam Map<String, Object> map) {
		List<Map<String, Object>> list = this.bookService.list(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("data", list);
		mav.setViewName("book/list");
		
		return mav;
	}
	
	@PostMapping("/delete")
	public ModelAndView deletePost(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();
		
		boolean isDeleteSuccess = this.bookService.delete(map);
		if(isDeleteSuccess) {
			mav.setViewName("redirect:/list");
		} else {
			String bookId = map.get("bookId").toString();
			mav.setViewName("redirect:/detail?bookId=" + bookId);
		}
		return mav;
	}
}
