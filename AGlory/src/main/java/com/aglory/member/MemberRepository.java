package com.aglory.member;

import java.util.List;

public interface MemberRepository {

	//C
	void setNewMember(Member member);//회원 가입 
	
	//R
	List<Member> getAllMemberList();//회원 전체 목록 
	
	Member getMemberById(String mid);//회원 하나 
	
//	//U
//	void updateBoard(Map<String, Object> board);//회원 수정 
//
//	//D
//	void removeBoard(String bid);//회원 삭제 
	
//	void removeUser(String username);
//	
//	void updateAuth(Map<String, Object> auth);
//	
//	User existUsername(String email);
}
