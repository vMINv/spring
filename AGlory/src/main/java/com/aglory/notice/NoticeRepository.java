package com.aglory.notice;

import java.util.List;
import java.util.Map;

public interface NoticeRepository {

	//C
	void setNewNotice(Notice notice);//공지 작성 
	
	//R
	List<Notice> getAllNoticeList();//공지 전체 목록 
	
	Notice getNoticeById(String nid);//공지 하나 
	
	//U
	void editNotice(Map<String, Object> notice);//공지 수정 
	
	void editCategory(Map<String, Object> category);//공지 category 수정

	//D
	void removeNotice(String nid);//공지 삭제 
}
