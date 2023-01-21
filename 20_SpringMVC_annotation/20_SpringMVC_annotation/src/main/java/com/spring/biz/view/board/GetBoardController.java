package com.spring.biz.view.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.biz.board.BoardVO;
import com.spring.biz.board.impl.BoardDAO;

@Controller
public class GetBoardController {

	@RequestMapping("/getBoard.do")
	public ModelAndView getBoard(BoardVO vo, BoardDAO boardDAO, ModelAndView mav) {
		System.out.println(">> 게시글 상세 보여주기");
		
		BoardVO board = boardDAO.getBoard(vo);
		
		mav.addObject("board", board); // Model에 데이터 저장
		mav.setViewName("getBoard.jsp"); // View 명칭 저장
		
		return mav;
	}

}
