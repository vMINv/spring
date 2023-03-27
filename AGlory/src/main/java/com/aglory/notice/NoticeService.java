package com.aglory.notice;

import java.util.List;
import java.util.Map;

public interface NoticeService {

	void setNewNotice(Notice notice); 
	
	List<Notice> getAllNoticeList(); 
	
	Notice getNoticeById(String nid);
	
	void editNotice(Notice notice); 
	
	void editCategory(Map<String, Object> category);

	void removeNotice(String nid); 
}
