package com.LINKER.users.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface UsersService {

	void signUp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
