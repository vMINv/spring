package com.aglory.notice;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("/addnotice")
	public String requestAddNoticeForm(@ModelAttribute("NewNotice") Notice notice) {
		return "notice/addnotice";
	}
	
	@PostMapping("/addnotice")
	public String submitAddNoticeForm(@ModelAttribute("NewNotice") Notice notice) {
		noticeService.setNewNotice(notice);
		
		return "redirect:/notice/list";
	}
	
	@GetMapping("/list")
	public String NoticeList(Model model) {
	    List<Notice> list = noticeService.getAllNoticeList();
	    model.addAttribute("noticeList", list);

	    return "notice/list";
	}
	
	@PostMapping("/list")
	public void editCategory(@RequestParam Map<String, Object> category) {// Map 여러개 바뀜 
		noticeService.editCategory(category);
	}
	
	@GetMapping("/detail")
	public String requestNoticeById(@RequestParam("nid") String nid, Model model) {
		Notice noticeById = noticeService.getNoticeById(nid);
		model.addAttribute("notice", noticeById);
		
		return "notice/detail";
	}
	
	@GetMapping("/edit")
	public String requestEditNotice(@RequestParam("nid") String nid, Model model, @ModelAttribute("EditNotice") Notice notice) {
		Notice noticeById = noticeService.getNoticeById(nid);
		model.addAttribute("notice", noticeById);

		return "notice/editnotice";
	}
	
	@PostMapping("/edit")
	public String submitEditNotice(@ModelAttribute("EditNotice") Notice notice) {
		noticeService.editNotice(notice);
		
		return "redirect:/notice/list";
	}
	
	@ResponseBody
	@RequestMapping("/remove")
	public void removeNotice(@RequestParam("nid") String nid) {// String 하나 바뀜 
		noticeService.removeNotice(nid);
	}
}
