package com.LINKER.users.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.LINKER.qna.model.IntegratedWriting;
import com.LINKER.users.model.UsersDTO;
import com.LINKER.users.model.UsersMapper;
import com.LINKER.util.mybatis.MybatisUtil;

public class UsersServiceImpl implements UsersService{

	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	
	@Override
	public void signUp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//값을 받음
		String name = request.getParameter("userName");
		String email = request.getParameter("userEmail");
		String password = request.getParameter("userPassword");
		String phone = request.getParameter("userPhone");
		String address = request.getParameter("userAddress");
		String type = request.getParameter("userType");
		
		//마이바티스 영역 - DAO를 대신함
		SqlSession sql = sqlSessionFactory.openSession(true);
		UsersMapper users = sql.getMapper(UsersMapper.class);
		
		UsersDTO dto = new UsersDTO(0, name, email, password, phone, null, type, 0, 0, address);
		users.signUp(dto);
		sql.close();
		
		response.sendRedirect("product.IntegratedWriting");
		
	}
}
