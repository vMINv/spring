package com.aglory.member;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	MemberService memberService;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@GetMapping("/addmember")
	public String requestAddMemberForm(@ModelAttribute("NewMember") Member member) {
		return "member/addmember";
	}
	
	@PostMapping("/addmember")
	public String submitAddMemberForm(@ModelAttribute("NewMember") Member member) {
		//스프링은 반드시 password를 암호화 하여 저장해야만 로그인을 할수 있는게 기본이다. 
		String encodedPassword = bcryptPasswordEncoder.encode(member.getPassword());
		member.setPassword(encodedPassword);
		
		memberService.setNewMember(member);
		
		return "redirect:/member/list";
	}
	
	@GetMapping("/list")
	public String memberList(Model model) {
	    List<Member> list = memberService.getAllMemberList();
	    model.addAttribute("memberList", list);

	    return "member/list";
	}
	
	@PostMapping("/updateAuth")
	public void editAuth(@RequestParam Map<String, Object> auth) {// Map 여러개 바뀜 
		memberService.editAuth(auth);
	}
	
	@PostMapping("/updateEnabled")
	public void editEnabled(@RequestParam Map<String, Object> enabled) {// Map 여러개 바뀜 
		memberService.editEnabled(enabled);
	}
	
	@GetMapping("/detail")
	public String requestMemberById(@RequestParam("mid") String mid, Model model) {
		Member memberById = memberService.getMemberById(mid);
		model.addAttribute("member", memberById);
		
		return "member/detail";
	}
	
	@GetMapping("/edit")
	public String requestEditMember(@RequestParam("mid") String mid, Model model, @ModelAttribute("EditMember") Member member) {
		Member memberById = memberService.getMemberById(mid);
		model.addAttribute("member", memberById);

		return "member/editmember";
	}
	
	@PostMapping("/edit")
	public String submitEditNotice(@ModelAttribute("EditMember") Member member, @RequestParam("mid") String mid) {
		memberService.editMember(member);
		
		return "redirect:/member/detail?mid="+mid;
	}
	
	@ResponseBody
	@RequestMapping("/remove")
	public void removeMember(@RequestParam("mid") String mid) {// String 하나 바뀜 
		memberService.removeMember(mid);
	}
}
