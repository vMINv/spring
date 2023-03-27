package com.aglory.notice;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeRepositoryImpl implements NoticeRepository {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void setNewNotice(Notice notice) {
		this.sqlSessionTemplate.insert("notice.insert", notice);
	}

	@Override
	public List<Notice> getAllNoticeList() {
		return this.sqlSessionTemplate.selectList("notice.select_list");
	}

	@Override
	public Notice getNoticeById(String nid) {
		return this.sqlSessionTemplate.selectOne("notice.select_detail", nid);
	}

	@Override
	public void editNotice(Map<String, Object> notice) {
		this.sqlSessionTemplate.update("notice.update_notice", notice);
	}

	@Override
	public void editCategory(Map<String, Object> category) {
		this.sqlSessionTemplate.update("notice.update_category", category);
	}

	@Override
	public void removeNotice(String nid) {
		this.sqlSessionTemplate.delete("notice.delete", nid);
	}

}
