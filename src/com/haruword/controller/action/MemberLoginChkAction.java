package com.haruword.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.haruword.dao.MemberDAO;
import com.haruword.dto.MemberVO;

public class MemberLoginChkAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userId = request.getParameter("userId");
		String result = request.getParameter("result");
		String url = "index.jsp";
		MemberDAO memberDAO = MemberDAO.getInstance();	
		MemberVO member = memberDAO.selectOneMemberById(userId);
		request.setAttribute("member", member);
		HttpSession session = request.getSession();
		session.setAttribute("loginUser",member);
		session.setAttribute("result",result);
//		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
//		dispatcher.forward(request, response);
		response.sendRedirect(url);
	}

}
