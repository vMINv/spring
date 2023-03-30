package com.aglory.member;

import java.util.List;
import java.util.Map;

public interface MemberService {

	void setNewMember(Member member); 
	
	List<Member> getAllMemberList(); 
	
	Member getMemberById(String mid); 
	
	void editAuth(Map<String, Object> auth);
	
	void editEnabled(Map<String, Object> enabled);
	
	void editMember(Member member);
	
	void removeMember(String mid);

	Member existUsername(String username);
		
//	void updateBoard(Map<String, Object> board); 
}
