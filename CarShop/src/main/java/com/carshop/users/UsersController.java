package com.carshop.users;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.carshop.controller.CarDTO;

@RequestMapping("users")
@Controller
public class UsersController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@GetMapping("/join")
	public String joinForm(@ModelAttribute("NewUser") User user) {//다 바뀜 
		return "users/joinform";
	}
	
	@PostMapping("/join")
	public String submitForm(@ModelAttribute("NewUser") User user) {
		//스프링은 반드시 password를 암호화하여 저장해야만 로그인 가능 
		String encodedPassword = bCryptPasswordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);
		userService.setNewUser(user);
		return "redirect:/login";
	}

	@GetMapping("/list")
	public String UserList(Model model) {
	    List<User> list = userService.getAllUserList();
	    model.addAttribute("userList", list);

	    return "users/list";
	}
	
	@ResponseBody
	@RequestMapping("/remove")
	public void removeUser(@RequestParam("username") String username) {//하나 바뀜 
		userService.removeUser(username);
	}
	
	@PostMapping("/list")
	public void updateAuth(@RequestParam Map<String, Object> auth) {// 여러개 바뀜 
	    userService.updateAuth(auth);
	}
	
	@PostMapping("/list")
	public void updateEnabled(@RequestParam Map<String, Object> enable) {// 여러개 바뀜 
		userService.updateEnabled(enable);
	}
}
