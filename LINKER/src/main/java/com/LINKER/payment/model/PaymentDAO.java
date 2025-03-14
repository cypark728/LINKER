package com.LINKER.payment.model;

public class PaymentDAO {

	private static PaymentDAO instance = new PaymentDAO();
	
	private PaymentDAO() {
	}
	
	public static PaymentDAO getInstance() {
		return instance;
	}
	
	// private String url = "jdbc:oracle:thin:@localhost:1521:xe"; // 테스트용 로컬
	private String url = "jdbc:oracle:thin:@172.30.1.58:1521:xe";
	private String uid = "LINKER";
	private String upw = "LINKER";
}
