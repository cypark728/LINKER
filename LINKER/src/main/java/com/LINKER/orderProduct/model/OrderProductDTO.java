package com.LINKER.orderProduct.model;

import java.sql.Timestamp;

public class OrderProductDTO {

	public int orderId;
	public String selectedOptions;
	public Timestamp orderDate;
	public int userId;
	
	public OrderProductDTO() {
	}

	public OrderProductDTO(int orderId, String selectedOptions, Timestamp orderDate, int userId) {
		super();
		this.orderId = orderId;
		this.selectedOptions = selectedOptions;
		this.orderDate = orderDate;
		this.userId = userId;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getSelectedOptions() {
		return selectedOptions;
	}

	public void setSelectedOptions(String selectedOptions) {
		this.selectedOptions = selectedOptions;
	}

	public Timestamp getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	
}
