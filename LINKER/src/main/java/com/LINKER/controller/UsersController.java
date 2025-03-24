package com.LINKER.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LINKER.qna.service.QnaService;
import com.LINKER.qna.service.QnaServiceImpl;
import com.LINKER.users.service.UsersService;
import com.LINKER.users.service.UsersServiceImpl;

@WebServlet("*.users")
public class UsersController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UsersController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String command = uri.substring( conPath.length() );
		
		System.out.println("요청경로: " + command);
		
		UsersService usersService = new UsersServiceImpl();
		
		if(command.equals("/signUpPage.users")) { //회원가입 페이지로 이동.
			request.getRequestDispatcher("/sign_up.html").forward(request, response);
		} else if(command.equals("/signUp.users")) { //회원가입
			usersService.signUp(request, response);
		}
	}

}
