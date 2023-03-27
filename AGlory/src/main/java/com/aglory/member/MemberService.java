package com.aglory.member;

import java.util.List;

public interface MemberService {

	void setNewMember(Member member); 
	
	List<Member> getAllMemberList(); 
	
	Member getMemberById(String mid); 
		
//	void updateBoard(Map<String, Object> board); 
//
//	void removeBoard(String bid); 
}
