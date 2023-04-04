//작성자 : 심현민
//최초 작성일 : 23.04.04
package com.church.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.church.domain.Board;
import com.church.service.BoardService;

@Controller
@RequestMapping("boards")
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@GetMapping("newBoard")
	public String requestAddBoardForm(@ModelAttribute("NewBoard") Board board) {
		return "boards/addBoard";
	}
	
	
}
