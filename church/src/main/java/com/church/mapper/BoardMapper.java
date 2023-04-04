//작성자 : 심현민
//최초 작성일 : 23.04.04
package com.church.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.church.domain.Board;
import com.church.domain.Reply;

public interface BoardMapper {
	
	@Insert("INSERT INTO board (uno, btitle, bcontents, bwriter) VALUES (#{uno}, #{btitle}, #{bcontents}, #{bwriter})")
	void newBoard(Board board);
	
	@Select("SELECT * FROM board")
	@ResultType(Board.class)
	List<Board> boardList();
	
	@Select("SELECT * FROM board WHERE bno = #{bno}")
	@ResultType(Board.class)
	Board boardById(String bno);

	@Update("UPDATE board SET btitle = #{btitle}, bcontents = #{bcontents} WHERE bno = #{bno}")
	void editBoard(Map<String, Object> board);
	
	@Update("UPDATE board SET bview = #{bview} WHERE bno = #{bno}")
	void updateView(Map<String, Object> boardView);
	
	@Update("UPDATE board SET replyCount = #{replyCount} WHERE bno = #{bno}")
	void updateReplyCnt(Map<String, Object> replyCnt);
	
	@Delete("DELETE FROM board WHERE bno = #{bno}")
	void removeBoard(String bno); 
	
}
