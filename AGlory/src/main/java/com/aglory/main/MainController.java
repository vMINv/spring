package com.aglory.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aglory.board.Board;
import com.aglory.board.BoardService;

@Controller
public class MainController {

	@Autowired
	BoardService boardService;
	
	@RequestMapping("/logout")
	public String logoutMain() {
		return "login";
	}
	
	@RequestMapping("/main")
	public String main(Model model) {
	    List<Board> list = boardService.getAllBoardList();
	    model.addAttribute("boardList", list);

		return "main";
	}
	
	@RequestMapping("/")
	public String loginMain() {
		return "login";
	}
	
	@RequestMapping("/loginfailed")
	public String loginfailedMain() {
		return "login";
	}
	
	@RequestMapping("/admin")
	public String loginAdmin() {
		return "admin";
	}
}
