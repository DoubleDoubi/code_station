package com.ycd.login.servlets;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<String> UserNames = Arrays.asList("AAA","BBB","CCC");
		String UserName = request.getParameter("username");
		String result = null;
		if (UserNames.contains(UserName)) {
			result = "<font color = 'red'>该用户名已经被使用</font>";
		}else{
			result = "<font color = 'green'>该用户名可以使用</font>";
		}
		response.setCharacterEncoding("utf-8");
//		response.setContentType("utf-8");
		response.getWriter().println(result);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}


