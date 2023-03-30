package com.aglory.member;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberRepository memberRepository;

	@Override
	public void setNewMember(Member member) {
		memberRepository.setNewMember(member);
	}

	@Override
	public List<Member> getAllMemberList() {
		return memberRepository.getAllMemberList();
	}

	@Override
	public Member getMemberById(String mid) {
		return memberRepository.getMemberById(mid);
	}

	@Override
	public void editAuth(Map<String, Object> auth) {
		memberRepository.editAuth(auth);
	}

	@Override
	public void removeMember(String mid) {
		memberRepository.removeMember(mid);
	}

	@Override
	public void editMember(Member member) {
		memberRepository.editMember(member);
	}

	@Override
	public void editEnabled(Map<String, Object> enabled) {
		memberRepository.editEnabled(enabled);
	}

	@Override
	public Member existUsername(String username) {
		return memberRepository.existUsername(username);
	}
}
