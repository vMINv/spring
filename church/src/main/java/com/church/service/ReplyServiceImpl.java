//작성자 : 심현민
//최초 작성일 : 23.04.04
package com.church.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.church.domain.Board;
import com.church.domain.Reply;
import com.church.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyMapper replyMapper;

	@Override
	public void newReply(Reply reply) {
		replyMapper.newReply(reply);
	}

	@Override
	public List<Reply> replyList(String bno) {
		return replyMapper.replyList(bno);
	}

	@Override
	public void editReply(Map<String, Object> reply) {
		replyMapper.editReply(reply);
	}

	@Override
	public void removeReply(String rno) {
		replyMapper.removeReply(rno);
	}

}
