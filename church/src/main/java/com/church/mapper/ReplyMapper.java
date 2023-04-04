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

import com.church.domain.Reply;

public interface ReplyMapper {
	
	@Insert("INSERT INTO reply (bno, uno, rwriter, rcontents) VALUES (#{bno}, #{uno}, #{rwriter}, #{rcontents})")
	void newReply(Reply reply);
	
	@Select("SELECT * FROM reply WHERE bno = #{bno}")
	@ResultType(Reply.class)
	List<Reply> replyList(String bno); 

	@Update("UPDATE reply SET rcontents = #{rcontents} WHERE rno = #{rno}")
	void editReply(Map<String, Object> reply);

	@Delete("DELETE FROM reply WHERE rno = #{rno}")
	void removeReply(String rno); 

}
