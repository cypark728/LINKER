package com.LINKER.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.product")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ProductController() {
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
		
		if(command.equals("/acrylic.product")) {
			request.getRequestDispatcher("/product_list.html").forward(request, response);
		} else if(command.equals("/wood.product")) {
			request.getRequestDispatcher("/product_list_wood.html").forward(request, response);
		} else if(command.equals("/illustration.product")) {
			request.getRequestDispatcher("/product_list_illust.html").forward(request, response);
		}
	}

}
