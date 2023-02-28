package com.carshop.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/boards", method=RequestMethod.GET)
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/list")
	public String CarList(Model model) {
		List<BoardDTO> list = boardService.getAllBoardList();
		model.addAttribute("boardList",list);
		return "board/boards";
	}
	
}
