package com.LINKER.qna.model;

public class QnaDAO {

	private static QnaDAO instance = new QnaDAO();
	
	private QnaDAO() {
	}
	
	public static QnaDAO getInstance() {
		return instance;
	}
	
	// private String url = "jdbc:oracle:thin:@localhost:1521:xe"; // 테스트용 로컬
	private String url = "jdbc:oracle:thin:@172.30.1.58:1521:xe";
	private String uid = "LINKER";
	private String upw = "LINKER";
}
