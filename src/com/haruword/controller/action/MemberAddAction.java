package com.haruword.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.haruword.dao.MemberDAO;

public class MemberAddAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String nickname = request.getParameter("nickname");
		String userId = request.getParameter("userId");
		String pwd = request.getParameter("pwd");
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.insertMember(name, userId, email, pwd, nickname);
		
		String url = "/Haruword/index.jsp";
		response.sendRedirect(url);

	}

}
