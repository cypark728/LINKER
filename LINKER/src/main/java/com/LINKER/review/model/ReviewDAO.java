package com.LINKER.review.model;

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
	
	//리뷰 만들기
	
}
