package com.aglory.notice;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	NoticeRepository noticeRepository;
	
	@Override
	public void setNewNotice(Notice notice) {
		noticeRepository.setNewNotice(notice);
	}

	@Override
	public List<Notice> getAllNoticeList() {
		return noticeRepository.getAllNoticeList();
	}

	@Override
	public Notice getNoticeById(String nid) {
		return noticeRepository.getNoticeById(nid);
	}

	@Override
	public void editNotice(Map<String, Object> notice) {
		noticeRepository.editNotice(notice);
	}

	@Override
	public void editCategory(Map<String, Object> category) {
		noticeRepository.editCategory(category);
	}

	@Override
	public void removeNotice(String nid) {
		noticeRepository.removeNotice(nid);
	}

}
