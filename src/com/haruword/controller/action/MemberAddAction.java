package com.haruword.controller.action;

import java.io.IOException;

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
		
		MemberVO member = new MemberVO();
		member.setName(name);
		member.setEmail(email);
		member.setNickname(nickname);
		member.setUserid(userId);
		member.setPwd(pwd);
		
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.insertMember(member);
		
		String url = "/Haruword/index.jsp";
		response.sendRedirect(url);

	}

}
