package com.ycd.threelink;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ThreeServlet")
public class ThreeServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		StringBuffer result = new StringBuffer();
		String type = request.getParameter("type");
		if(type=="幼儿园"||type.equals("幼儿园")){
			result.append("<br/><option>小班</option>");
			result.append("<br/><option>中班</option>");
			result.append("<br/><option>大班</option>");
			result.append("<br/><option>学前班</option>");
		}
		if(type=="小学"||type.equals("小学")){
			result.append("<br/><option>一年级</option>")
			  .append("<br/><option>二年级</option>")
			  .append("<br/><option>三年级</option>")
			  .append("<br/><option>四年级</option>")
			  .append("<br/><option>五年级</option>")
			  .append("<br/><option>六年级</option>");
		}
		if(type=="一年级"||type.equals("一年级")){
			result.append("<br/><option>一班</option>")
			  .append("<br/><option>二班</option>")
			  .append("<br/><option>三班</option>")
			  .append("<br/><option>四班</option>")
			  .append("<br/><option>五班</option>");
		}
		response.setCharacterEncoding("utf-8");
		response.getWriter().println(result.toString());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}