package com.church.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.church.domain.Users;
import com.church.service.UsersService;

@Controller
public class UsersController {
	
	@Autowired
	UsersService usersService;
	
	@RequestMapping("/home")
	public String UserList(Model model) {
		List<Users> list = usersService.listUser();
		model.addAttribute("userList",list);
		return "home";
	}
}
