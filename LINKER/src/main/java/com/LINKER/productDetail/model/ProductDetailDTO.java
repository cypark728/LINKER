package com.LINKER.productDetail.model;

import java.sql.Timestamp;

public class ProductDetailDTO {

	public int productDetailId;
	public byte[] productImage;
	public String productDescription;
	public Timestamp productCreatedAt;
	public int productPrice;
	public String productType;
	public int userId;
	public String productStaus;
	
	public ProductDetailDTO() {
	}

	public ProductDetailDTO(int productDetailId, byte[] productImage, String productDescription,
			Timestamp productCreatedAt, int productPrice, String productType, int userId, String productStaus) {
		super();
		this.productDetailId = productDetailId;
		this.productImage = productImage;
		this.productDescription = productDescription;
		this.productCreatedAt = productCreatedAt;
		this.productPrice = productPrice;
		this.productType = productType;
		this.userId = userId;
		this.productStaus = productStaus;
	}

	public int getProductDetailId() {
		return productDetailId;
	}

	public void setProductDetailId(int productDetailId) {
		this.productDetailId = productDetailId;
	}

	public byte[] getProductImage() {
		return productImage;
	}

	public void setProductImage(byte[] productImage) {
		this.productImage = productImage;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public Timestamp getProductCreatedAt() {
		return productCreatedAt;
	}

	public void setProductCreatedAt(Timestamp productCreatedAt) {
		this.productCreatedAt = productCreatedAt;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductType() {
		return productType;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getProductStaus() {
		return productStaus;
	}

	public void setProductStaus(String productStaus) {
		this.productStaus = productStaus;
	}

	
}
