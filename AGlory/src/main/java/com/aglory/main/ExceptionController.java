package com.aglory.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExceptionController {
	
	@RequestMapping("/errorcommon")
	public String errorCommon() {
		return "errorcommon";
	}
	
	@RequestMapping("/error500")
	public String error500() {
		return "error500";
	}
	
	@RequestMapping("/error400")
	public String error400() {
		return "error400";
	}
}
