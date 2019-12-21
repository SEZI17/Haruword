package com.haruword.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.haruword.dao.MemberDAO;
import com.haruword.dto.MemberVO;


public class MemberLoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "index.jsp";
		String userId = request.getParameter("userId");
		String pwd = request.getParameter("pwd");
		System.out.println(userId);
		MemberDAO memberDAO = MemberDAO.getInstance();
		
		boolean result = memberDAO.getUserInfo(userId,pwd);
		System.out.println(result);
		if(result) {
			request.setAttribute("result", result);
			MemberVO member = memberDAO.selectOneMemberById(userId);
			request.setAttribute("member", member);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser",member);
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}

	}

}
