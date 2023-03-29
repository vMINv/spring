package com.aglory.main;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aglory.board.Board;
import com.aglory.board.BoardService;

@Controller
public class MainController {

	@Autowired
	BoardService boardService;
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
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
	public String loginAdmin(Model model) {
		//전체 테이블을 모두 조회
		List<Board> list = boardService.getAllBoardList();
		
		//그 중 필요한 bstatus 만 추출   자바 버전 1.8 이상 부터만 지원
		List<Integer> statusList = list.stream().map(Board::getBstatus).collect(Collectors.toList());
		
		int n1 = 0;
		int n2 = 0;
		int n3 = 0;
		int n4 = 0;
		int n5 = 0;
		
		for(Integer status : statusList) {
			if (status == 1) n1++;
			if (status == 2) n2++;
			if (status == 3) n3++;
			if (status == 4) n4++;
			if (status == 5) n5++;
		}
		
		int cnt = list.size();
		
		model.addAttribute("n1", n1);
		model.addAttribute("n2", n2);
		model.addAttribute("n3", n3);
		model.addAttribute("n4", n4);
		model.addAttribute("n5", n5);
		model.addAttribute("cnt", cnt);
		
		List<Todo> todoList = this.sqlSessionTemplate.selectList("todo.select_list");
		
		model.addAttribute("todoList", todoList);
		
		return "admin";
	}
	
	@RequestMapping(value = "/detailajax", method = RequestMethod.POST)
	public @ResponseBody List<Board> requestBoardByIdAjax(@RequestParam("bid") String bid, @ModelAttribute Board board) {
		return boardService.getReplyById(bid);
	}
	
	@ResponseBody
	@RequestMapping(value = "/addtodo", method = RequestMethod.POST)
	public void addtodo(@RequestParam Map<String, Object> map) {
		String todo = (String)map.get("todo");
		String tdue = (String)map.get("tdue");
		
		this.sqlSessionTemplate.insert("todo.insert", map);
	}
	
}