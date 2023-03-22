package com.carshop.users;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("users")
@Controller
public class UsersController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@GetMapping("/join")
	public String joinForm(@ModelAttribute("NewUser") User user) {// User(객체) 다 바뀜 
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
	public void removeUser(@RequestParam("username") String username) {// String 하나 바뀜 
		userService.removeUser(username);
	}
	
	@PostMapping("/list")
	public void updateAuth(@RequestParam Map<String, Object> auth) {// Map 여러개 바뀜 
	    userService.updateAuth(auth);
	}
	
	@RequestMapping("/kakao")
	public String loginCheckKakao(HttpServletRequest req, @RequestParam Map<String, Object> auth) {
		
		String email = (String) auth.get("email");

		User user = this.userService.existUsername(email);
		
		if(user!=null) {
			//System.out.println("디비에 회원정보 있음 즉 이미 회원");
			List<GrantedAuthority> list = new ArrayList<GrantedAuthority>();
			list.add(new SimpleGrantedAuthority("ROLE_USER"));
			
			SecurityContext sc = SecurityContextHolder.getContext();
			
			sc.setAuthentication(new UsernamePasswordAuthenticationToken(user, null, list));
			
			HttpSession session = req.getSession(true);
			
			session.setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY, sc);
			
			return "/login";//존재하는 페이지로 지정 > success  
		} else {
			//System.out.println("디비에 회원정보 없음 즉 회원 아님");
			return "";//error 발생시키기 
		}
	}
	
	@GetMapping("/joinkakao")
	public String joinkakaoForm(@ModelAttribute("NewUser") User user) {
		return "users/joinkakao";
	}
	
	@PostMapping("/joinkakao")
	public String submitkakaoForm(@ModelAttribute("NewUser") User user) {
		//스프링은 반드시 password를 암호화하여 저장해야만 로그인 가능 
		String encodedPassword = bCryptPasswordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);
		userService.setNewUser(user);
		return "redirect:/login";
	}
}
