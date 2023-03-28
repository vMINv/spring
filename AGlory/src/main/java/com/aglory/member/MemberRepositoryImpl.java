package com.aglory.member;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberRepositoryImpl implements MemberRepository {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void setNewMember(Member member) {
		this.sqlSessionTemplate.insert("member.insert", member);
	}

	@Override
	public List<Member> getAllMemberList() {
		return this.sqlSessionTemplate.selectList("member.select_list");
	}

	@Override
	public Member getMemberById(String mid) {
		return this.sqlSessionTemplate.selectOne("member.select_detail", mid);
	}

	@Override
	public void editAuth(Map<String, Object> auth) {
		this.sqlSessionTemplate.update("member.update_auth", auth);
	}

	@Override
	public void removeMember(String mid) {
		this.sqlSessionTemplate.delete("member.delete", mid);
	}

	@Override
	public void editMember(Member member) {
		this.sqlSessionTemplate.update("member.update_member", member);
	}

	@Override
	public void editEnabled(Map<String, Object> enabled) {
		this.sqlSessionTemplate.update("member.update_enabled", enabled);
	}

}
