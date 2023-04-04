package com.aglory.member;

import java.util.List;
import java.util.Map;

public interface MemberRepository {

	//C
	void setNewMember(Member member);// 회원 가입 
	
	//R
	List<Member> getAllMemberList();// 회원 목록 
	
	Member getMemberById(String mid);// 회원 한명 
	
	Member existUsername(String username);// 회원 존재 여부
	
	//U
	void editAuth(Map<String, Object> auth);// 회원 권한 수정

	void editEnabled(Map<String, Object> enabled);// 회원 가능 수정
	
	void editMember(Member member);// 회원 정보 수정 

	//D
	void removeMember(String mid);// 회원 삭제 
}
