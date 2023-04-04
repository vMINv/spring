//작성자 : 심현민
//최초 작성일 : 23.04.04
package com.church.service;

import java.util.List;
import java.util.Map;

import com.church.domain.Reply;

public interface ReplyService {

	void newReply(Reply reply);
	
	List<Reply> replyList(String bno); 

	void editReply(Map<String, Object> reply);

	void removeReply(String rno); 
}
