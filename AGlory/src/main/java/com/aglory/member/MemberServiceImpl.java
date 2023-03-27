package com.aglory.member;

import java.util.List;

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
}
