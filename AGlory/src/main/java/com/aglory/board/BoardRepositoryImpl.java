package com.aglory.board;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardRepositoryImpl implements BoardRepository {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void setNewBoard(Board board) {
		this.sqlSessionTemplate.insert("board.insert", board);
	}
	
	public List<Board> getAllBoardList() {
		return this.sqlSessionTemplate.selectList("board.select_list");
	}
	
	public Board getBoardById(String bid) {
		return this.sqlSessionTemplate.selectOne("board.select_detail", bid);
	}

	public void replynewBoard(Map map) {
		this.sqlSessionTemplate.insert("board.insert_reply", map);
	}
	
	public List<Board> getReplyById(String bid) {
		return this.sqlSessionTemplate.selectList("board.select_reply", bid);
	}

}
