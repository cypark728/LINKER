package com.LINKER.review.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ReviewDAO {

	private static ReviewDAO instance = new ReviewDAO();
	
	private ReviewDAO() {
	}
	
	public static ReviewDAO getInstance() {
		return instance;
	}
	
	private String url = "jdbc:oracle:thin:@localhost:1521:xe"; // 테스트용 로컬
	//private String url = "jdbc:oracle:thin:@172.30.1.58:1521:xe";
	private String uid = "LINKER";
	private String upw = "LINKER";
	
	//리뷰 쓰기
	public void writeReview(ReviewDTO dto) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "INSERT INTO REVIEW (REVIEW_ID, PRODUCT_DETAIL_ID, REVIEW_CONTENT, USER_ID) "
				+ "VALUES(review_seq.NEXTVAL, ?, ?, ?)";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.productDetailId);
			pstmt.setString(2, dto.reviewContent);
			pstmt.setInt(3, dto.userId);
			
			pstmt.executeUpdate();
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
	}
	
	//특정 상품의 리뷰 목록 반환하기
	public List<ReviewDTO> getReviewsByProductId(int productDetailId) {
		//반환용 리스트
        List<ReviewDTO> reviewList = new ArrayList<>();
        
        Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
        
        String sql = "SELECT REVIEW_ID, PRODUCT_DETAIL_ID, REVIEW_CONTENT, USER_ID, REVIEW_CREATED_AT " +
                     "FROM REVIEW WHERE PRODUCT_DETAIL_ID = ? ORDER BY REVIEW_CREATED_AT DESC";

        try {
        	Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productDetailId);
			
			rs = pstmt.executeQuery();
			
			
			while (rs.next()) {
                ReviewDTO dto = new ReviewDTO();
                dto.setReviewId(rs.getInt("review_id"));
                dto.setProductDetailId(rs.getInt("product_detail_id"));
                dto.setReviewContent(rs.getString("review_content"));
                dto.setUserId(rs.getInt("user_id"));
                dto.setReviewCreatedAt(rs.getTimestamp("review_created_at"));
                reviewList.add(dto); 
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

        return reviewList;
    }
	
	
	//특정 유저의 리뷰 목록을 반환
	public List<ReviewDTO> getReviewsByUserId(int userId) {
		//반환용 리스트
        List<ReviewDTO> reviewList = new ArrayList<>();
        
        Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
        
        String sql = "SELECT REVIEW_ID, PRODUCT_DETAIL_ID, REVIEW_CONTENT, USER_ID, REVIEW_CREATED_AT " +
                     "FROM REVIEW WHERE USER_ID = ? ORDER BY REVIEW_CREATED_AT DESC";

        try {
        	Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userId);
			
			rs = pstmt.executeQuery();
			
			
			while (rs.next()) {
                ReviewDTO dto = new ReviewDTO();
                dto.setReviewId(rs.getInt("review_id"));
                dto.setProductDetailId(rs.getInt("product_detail_id"));
                dto.setReviewContent(rs.getString("review_content"));
                dto.setUserId(rs.getInt("user_id"));
                dto.setReviewCreatedAt(rs.getTimestamp("review_created_at"));
                reviewList.add(dto); 
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

        return reviewList;
    }
	
}
