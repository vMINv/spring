package com.aglory.board;

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

import com.aglory.main.MailService;
import com.aglory.member.Member;
import com.aglory.member.MemberService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@Autowired
	private MailService mailService;
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/addboard")
	public String requestAddBoardForm(@ModelAttribute("NewBoard") Board board) {
		return "board/addboard";
	}
	
	@PostMapping("/addboard") 
	public String submitAddBoardForm(@ModelAttribute("NewBoard") Board board) {
		
		boardService.setNewBoard(board);
		
////		User user = userService.existUsername(board.getBwriter());
//		
////		String to = "hyunmin04050@gmail.com";
////		String subject = board.getBwriter() + " 님이 게시판에 글을 등록하셨습니다.";
////		String body = board.getBcontent();
//		
//		mailService.sendMail(to, subject, body);
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/list")
	public String BoardList(Model model) {
	    List<Board> list = boardService.getAllBoardList();
	    model.addAttribute("boardList", list);

	    return "board/list";
	}
	
	@PostMapping("/list")// 게시물 상태 update 결과 넘기기 
	public void editStatus(@RequestParam Map<String, Object> status) {// Map 여러개 바뀜 
		boardService.editStatus(status);
	}
	
	@GetMapping("/detail")
	public String requestBoardById(@RequestParam("bid") String bid, Model model) {
		// 주 게시물
		Board boardById = boardService.getBoardById(bid);
		model.addAttribute("board", boardById);
		
		// 답변
		List<Board> list = boardService.getReplyById(bid);
		int cnt = list.size();
		model.addAttribute("replyList",list);
		model.addAttribute("cnt", cnt);
		
		return "board/detail";
	}
	
	@ResponseBody
	@RequestMapping("/replynew")
	public void replynew(@RequestParam Map<String, Object> map) {
		
		String bpid = (String)map.get("bpwriter");

		boardService.replynewBoard(map);

		Member member = memberService.existUsername(bpid);
		
		String to = member.getMemail();
		String subject = bpid + " 님의 글에 댓글이 달렸습니다.";
		String body = (String)map.get("bcontent");
		
		mailService.sendMail(to, subject, body);
	}
	
	@ResponseBody
	@RequestMapping("/removeboard")
	public void removeboard(@RequestParam("bid") String bid) {// String 하나 바뀜 
		boardService.removeBoard(bid);
	}
	
	@ResponseBody
	@RequestMapping("/removereply")
	public void removeReply(@RequestParam("bid") String bid) {// String 하나 바뀜 
		boardService.removeReply(bid);
	}
	
	@GetMapping("/edit")
	public String requestEditboard(@RequestParam("bid") String bid, Model model, @ModelAttribute("EditBoard") Board board) {
		Board boardById = boardService.getBoardById(bid);
		model.addAttribute("board", boardById);

		return "board/editboard";
	}
	
	@PostMapping("/edit")
	public String submitEditboard(@ModelAttribute("EditBoard") Board board) {
		boardService.editBoard(board);
		
		return "redirect:/board/list";
	}

}
