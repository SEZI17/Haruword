package com.haruword.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.haruword.dao.MemberDAO;


public class MemberCheckpwAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub		
		
		String pwd = request.getParameter("pwd");
		HttpSession session = request.getSession();
		String userId = session.getAttribute("userId").toString();
		
		MemberDAO memberDAO = MemberDAO.getInstance();	
		boolean result = memberDAO.getUserInfo(userId,pwd);
		String url = "/page/MEM/confirmPW.jsp";
		
		if(result) {
			boolean chkResult = false;
			request.setAttribute("chkResult", chkResult);
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request,response);
		} else {
			boolean chkResult = true;
			request.setAttribute("chkResult", chkResult);
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request,response);
		}
	}

}
