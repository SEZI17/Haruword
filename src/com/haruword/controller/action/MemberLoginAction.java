package com.haruword.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.haruword.dao.MemberDAO;


public class MemberLoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/page/MEM/loginChk.jsp";
		String userId = request.getParameter("userId");
		String pwd = request.getParameter("pwd");
		System.out.println(userId);
		MemberDAO memberDAO = MemberDAO.getInstance();		
		boolean result = memberDAO.getUserInfo(userId,pwd);
		System.out.println(result);
		request.setAttribute("result", result);
		request.setAttribute("userId", userId);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request,response);	

	}

}
