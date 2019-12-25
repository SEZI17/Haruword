package com.haruword.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.haruword.dao.MemberDAO;
import com.haruword.dto.MemberVO;

public class MemberModifyAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nickname = request.getParameter("nickname");
		String email = request.getParameter("email");
		HttpSession session = request.getSession();
		String userid = session.getAttribute("userId").toString();
		System.out.println(userid);
		MemberVO member = new MemberVO();
		member.setUserid(userid);
		member.setNickname(nickname);
		member.setEmail(email);
		
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.updateMember(member);
		
		String url = "index.jsp";
		member = memberDAO.selectOneMemberById(userid);
		request.setAttribute("member", member);
		session.setAttribute("loginUser",member);
		response.sendRedirect(url);
	}

}
