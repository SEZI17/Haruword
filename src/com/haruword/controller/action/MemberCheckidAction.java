package com.haruword.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.haruword.dao.MemberDAO;

public class MemberCheckidAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userId = request.getParameter("userId");
		System.out.println(userId);
		
		MemberDAO memberDAO = MemberDAO.getInstance();
		boolean result = memberDAO.confirmID(userId);
		System.out.println("중복여부 : "+result);
		String url = "/page/MEM/idExistChk.jsp";
		request.setAttribute("result", result);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request,response);

	}

}
