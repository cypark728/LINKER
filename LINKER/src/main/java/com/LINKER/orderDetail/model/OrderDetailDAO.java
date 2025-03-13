package com.LINKER.orderDetail.model;

public class OrderDetailDAO {

	private static OrderDetailDAO instance = new OrderDetailDAO();
	
	private OrderDetailDAO() {
		
	}
	
	public static OrderDetailDAO getInstance() {
		return instance;
	}
	
		// private String url = "jdbc:oracle:thin:@localhost:1521:xe"; // 테스트용 로컬
		private String url = "jdbc:oracle:thin:@172.30.1.58:1521:xe";
		private String uid = "LINKER";
		private String upw = "LINKER";
}
