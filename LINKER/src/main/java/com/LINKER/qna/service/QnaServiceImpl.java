package com.LINKER.qna.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.LINKER.qna.model.IntegratedWriting;
import com.LINKER.qna.model.QnaDTO;
import com.LINKER.util.mybatis.MybatisUtil;

public class QnaServiceImpl implements QnaService{
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
	
	@Override
	public void writeQna(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//값을 받음.
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		//마이바티스 영역 - DAO를 대신함
		SqlSession sql = sqlSessionFactory.openSession(true);
		IntegratedWriting writing = sql.getMapper(IntegratedWriting.class);
		
		//임시로 유저 아이디에 0 넣었음. 나중에는 바꿔야함!!!!!!!!!!!!!!!!!!!!!!!!!
		QnaDTO dto = new QnaDTO(0, title, content, null, null, 0);
		int result = writing.writeQna(dto);
		sql.close();
		
		response.sendRedirect("qna.IntegratedWriting");
	}
}
