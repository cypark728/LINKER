package com.LINKER.productDetail.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.LINKER.productDetail.model.ProductDetailDTO;
import com.LINKER.qna.model.IntegratedWriting;
import com.LINKER.util.mybatis.MybatisUtil;

public class ProductDetailServiceImpl implements ProductDetailService{
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	@Override
	public void writeProductDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//값을 받음.
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String category = request.getParameter("category");
		
		//이미지 값 받기.
		
		
		//마이바티스 영역 - DAO를 대신함
		SqlSession sql = sqlSessionFactory.openSession(true);
		IntegratedWriting writing = sql.getMapper(IntegratedWriting.class);
		
		//userId 임시로 10 줬음. 고쳐야함!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		ProductDetailDTO dto = new ProductDetailDTO(0, null, content, null, 0, category, 10, null, title);
		writing.writeProductDetail(dto);
		sql.close();
		
		response.sendRedirect("qna.IntegratedWriting");
		
	}
}
