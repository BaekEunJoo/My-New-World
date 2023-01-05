package com.spring.Imuseum.member.dao;

import java.util.List;

import com.spring.Imuseum.member.MemberVO;

public interface MemberDAO {
	//메소드명이 Mapper 파일의 id명으로 사용
	
	MemberVO getMember(MemberVO vo);
	List<MemberVO> getMemberAll(MemberVO vo);
	void logout(MemberVO vo);
	MemberVO joinMember(MemberVO vo);
	MemberVO findID(MemberVO vo);
	MemberVO findPassword(MemberVO vo);	
	MemberVO updateMember(MemberVO vo);
	MemberVO deleteMember(MemberVO vo);
}
