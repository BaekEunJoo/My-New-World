package com.spring.Imuseum.member;

import java.util.List;

public interface MemberService {
	MemberVO getMember(MemberVO vo);
	List<MemberVO> getMemberAll(MemberVO vo);
	void logout(MemberVO vo);
	MemberVO joinMember(MemberVO vo);
	MemberVO findID(MemberVO vo);
	MemberVO findPassword(MemberVO vo);	
	MemberVO updateMember(MemberVO vo);
	MemberVO deleteMember(MemberVO vo);
	
}
