package com.haruword.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.haruword.dao.MemberDAO;
import com.haruword.dto.MemberVO;

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

	}

}
