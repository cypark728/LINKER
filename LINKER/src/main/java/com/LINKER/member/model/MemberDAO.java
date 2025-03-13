package com.LINKER.member.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	private static MemberDAO instance = new MemberDAO();
	private MemberDAO() {
	}
	public static MemberDAO getInstance() {
		return instance;
	}
	
	private String url = "jdbc:oracle:thin:@172.30.1.58:1521:xe";
	private String uid = "LINKER";
	private String upw = "LINKER";
	
	//userId를 받으면 이름, 이메일, 비밀번호를 반환하는 함수(DB연동 테스트용, LINKER기능은 아님)
	public MemberDTO getMemeberInfo(int userId) { 
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM MEMBER WHERE USER_ID = ?";
		
		//반환용 DTO
		MemberDTO dto = new MemberDTO();
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String userName = rs.getString("user_name");
				String email = rs.getString("email");
				String password = rs.getString("password");
				
				dto.setUserName(userName);
				dto.setEmail(email);
				dto.setPassword(password);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn != null) conn.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e2) {
			}
		}
		
		
		return dto;
	}
}
