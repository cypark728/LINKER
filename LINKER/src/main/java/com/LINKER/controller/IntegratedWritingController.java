package com.LINKER.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LINKER.productDetail.service.ProductDetailService;
import com.LINKER.productDetail.service.ProductDetailServiceImpl;
import com.LINKER.qna.service.QnaService;
import com.LINKER.qna.service.QnaServiceImpl;


@WebServlet("*.IntegratedWriting")
public class IntegratedWritingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public IntegratedWritingController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글처리
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String command = uri.substring( conPath.length() );
		
		System.out.println("요청경로: " + command);
		
		QnaService qnaService = new QnaServiceImpl();
		ProductDetailService productDetailService = new ProductDetailServiceImpl();
		
		if(command.equals("/qna.IntegratedWriting")) { //QnA 리스트로 이동
			request.getRequestDispatcher("qna_list.html").forward(request, response);
		} else if(command.equals("/product.IntegratedWriting")) { //제품상세 글 쓰고 메인으로 이동.
			request.getRequestDispatcher("main.jsp").forward(request, response);
		} else if(command.equals("/registerQna.IntegratedWriting")) { //QnA 글쓰기
			qnaService.writeQna(request, response);
		} else if(command.equals("/registerProduct.IntegratedWriting")) { //제품상세 글쓰기
			productDetailService.writeProductDetail(request, response);
		} else if(command.equals("/faq.IntegratedWriting")) { // 고객센터로 이동
			request.getRequestDispatcher("faq.html").forward(request, response);
		} else if(command.equals("/write.IntegratedWriting")) { //통합글쓰기로 이동
			request.getRequestDispatcher("integratedWriting.jsp").forward(request, response);
		}
		
	}


}
