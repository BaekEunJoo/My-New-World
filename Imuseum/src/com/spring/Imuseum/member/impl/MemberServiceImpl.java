package com.spring.Imuseum.member.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.Imuseum.member.MemberService;
import com.spring.Imuseum.member.MemberVO;
import com.spring.Imuseum.member.dao.MemberDAO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAO memberDAO;
		
	@Override
	public MemberVO getMember(MemberVO vo) {
		
		return memberDAO.getMember(vo);
	}

	@Override
	public List<MemberVO> getMemberAll(MemberVO vo) {
		return null;
	}

	@Override
	public void logout(MemberVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public MemberVO joinMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO findID(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO findPassword(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO updateMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO deleteMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
