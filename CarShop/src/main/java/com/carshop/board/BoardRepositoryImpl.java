package com.carshop.board;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardRepositoryImpl implements BoardRepository {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void setNewBoard(Board board) {
		this.sqlSessionTemplate.insert("board.insert", board);
	}

	@Override
	public List<Board> getAllBoardList() {
		return this.sqlSessionTemplate.selectList("board.select_list");
	}
	
	@Override
	public Board getBoardById(int bid) {
		return this.sqlSessionTemplate.selectOne("board.select_detail");
	}

	@Override
	public void updateAuth(Map<String, Object> auth) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateEnabled(Map<String, Object> enable) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeBoard(String username) {
		// TODO Auto-generated method stub
		
	}


}
