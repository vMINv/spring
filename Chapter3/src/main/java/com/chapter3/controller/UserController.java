package com.chapter3.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	private Log logger = LogFactory.getLog(UserController.class);
	
	@GetMapping("/create-user")
	public String showCreateUserPage(Model model) {
		model.addAttribute("user", new User());
		return "user";
	}
	
	@PostMapping("/create-user")
	public String addTodo(User user) {
		logger.info("user details " + user);
		return "redirect:list-users";
	}
	
	@RequestMapping("/list-users")
	public String showAllUsers(Model model) {
		model.addAttribute("user", new User());
		return "list-users";
	}
}
