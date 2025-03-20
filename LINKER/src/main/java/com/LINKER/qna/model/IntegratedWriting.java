package com.LINKER.qna.model;

import com.LINKER.productDetail.model.ProductDetailDTO;

public interface IntegratedWriting {

	//메서드 선언 - 메서드명 xml구현체가 동일한 이름으로 사용함
	//마이바티스의 매개변수는 기본이 1개
	int writeProductDetail(ProductDetailDTO dto);
	int writeQna(QnaDTO dto);
	
	
}
