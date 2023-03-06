package com.chapter3.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller //컨트롤러 정의 
public class BasicController { //뷰 없는 간단한 컨트롤러 플로우 
	@RequestMapping("/welcome")
	@ResponseBody
	public String welcome() {
		return "Welcome to Spring MVC";
	}
}
