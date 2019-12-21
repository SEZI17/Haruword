package com.haruword.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
		String sql = "insert into haru_member values(?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		System.out.println(name+userId+email+pwd+nickname+"---------------");
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, userId);
			pstmt.setString(3, nickname);
			pstmt.setString(4, email);
			pstmt.setString(5, pwd);
			pstmt.setInt(6, 0);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public boolean confirmID(String userId) {
		// TODO Auto-generated method stub
		boolean result = false;
		String sql = "select userid from haru_member where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userId);
			rs = pstmt.executeQuery();
			if(rs.next())
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		} return result;
		
	}

	public boolean confirmNick(String nickname) {
		// TODO Auto-generated method stub
		boolean result = false;
		String sql = "select userid from haru_member where nickname=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,nickname);
			rs = pstmt.executeQuery();
			if(rs.next())
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		} return result;
	}

	public MemberVO selectOneMemberById(String userId) {
		// TODO Auto-generated method stub
		MemberVO member = null;		
		
		String sql = "SELECT * FROM HARU_MEMBER WHERE USERID=?";		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {			
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				member = new MemberVO();
				member.setName(rs.getString("NAME"));
				member.setEmail(rs.getString("EMAIL"));
				member.setNickname(rs.getString("NICKNAME"));
				member.setUserid(rs.getString("USERID"));
				member.setPwd(rs.getString("PWD"));
				member.setRank(rs.getInt("RANK"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}		
		return member;
	}

	public boolean getUserInfo(String userId, String pwd) {
		// TODO Auto-generated method stub
		boolean result = false;
		String sql = "select pwd from haru_member where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString("pwd")!=null && rs.getString("pwd").equals(pwd)) {
					result = true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		} return result;
	} 
	
}
