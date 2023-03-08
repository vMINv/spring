package com.z.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
	private Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@GetMapping("/create-user-with-validation")
	public String ShowCreateUserPage(Model model) {
		model.addAttribute("user", new User());
		return "user";
	}
	
	@PostMapping("/create-user-with-validation")
	public String addTodo(@Valid User user, BindingResult result) {
		
		if(result.hasErrors()) {
			return "user";
		}
		
		logger.info("user details " + user);
		
		return "redirect:list-users";
	}
	
	@GetMapping("/list-users")
	public String showAllUsers() {
		return "list-users";
	}
	
	
}
