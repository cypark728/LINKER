package com.LINKER.qna.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface QnaService {
	
	void writeQna(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	void getQnaList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
