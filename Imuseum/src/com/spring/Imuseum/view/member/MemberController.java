package com.spring.Imuseum.view.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.Imuseum.member.MemberService;
import com.spring.Imuseum.member.MemberVO;


@RequestMapping("/member")
@SessionAttributes("member")

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	//회원 가입
	@RequestMapping("/sign.do")
	public String moveToSign(MemberVO vo) {
		System.out.println(">>> signUp 실행 " );
		System.out.println("vo:" + vo);
		//memberService.joinMember(vo);
		return "redirect:/home.jsp";
	}
	
	
	@GetMapping("/login.do")
	public String loginComplete(@ModelAttribute("member") MemberVO vo) {
		System.out.println("로그인 성공 후 member:" + vo);
		return "redirect:/home.jsp";
	}
	
	@RequestMapping("/logout.do")
	public String logout(SessionStatus ss) {
		System.out.println("logout 실행");
		ss.setComplete();
		return "redirect:/home.jsp";
	}
	
	@PostMapping("/login.do")
	public String login(MemberVO vo, Model model,RedirectAttributes rttr) {
		System.out.println("post방식 login 실행");
		String result = null;
		if(memberService.getMember(vo) != null) {
			model.addAttribute("member",memberService.getMember(vo));
			result = "/member/index";
			
		} else if(memberService.getMember(vo) == null) {
			rttr.addFlashAttribute("errorMsg", result);	
			result = "false";
		}
		return result;
		
	}
	//수정 이동
	@RequestMapping("modifyFormMove.do")
	public String updateFormMove() {
		return "member/modify";
	}
	
	//수정 
	@RequestMapping("update.do")
	public String updateMember(@ModelAttribute("member") MemberVO vo) {
		System.out.println(">>> update.do 실행");
		System.out.println(vo);
		return null;
	}
	

}
