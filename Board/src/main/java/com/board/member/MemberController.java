package com.board.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@GetMapping("/insert")
	public String requestInsertForm(@ModelAttribute("NewMember") Member member) {
		return "insertMember";
	}
	
	@PostMapping("/insert")
	public String submitInsertForm(@ModelAttribute("NewMember") Member member) {
		System.out.println(member.getUsername());
		System.out.println(member.getPassword());
		System.out.println(member.getName());
		System.out.println(member.getEmail());
		System.out.println(member.getTel());
		System.out.println(member.getGender());
		System.out.println(member.getBirth());
		
		return "home";
	}

}
