package com.haruword.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.haruword.dto.MemberVO;
import com.haruword.util.DBManager;

public class MemberDAO {

	public MemberDAO() {
		// TODO Auto-generated constructor stub
	}

	private static MemberDAO instance = new MemberDAO();

	public static MemberDAO getInstance() {
		return instance;
	}

	public void insertMember(String name, String userId, String email, String pwd, String nickname) {
		// TODO Auto-generated method stub
		String sql = "insert into product values(?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, userId);
			pstmt.setString(3, nickname);
			pstmt.setString(4, email);
			pstmt.setString(4, pwd);
			//pstmt.setInt(4, 0);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
}