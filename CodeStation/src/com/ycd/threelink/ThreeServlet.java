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
		if(type=="�׶�԰"||type.equals("�׶�԰")){
			result.append("<br/><option>С��</option>");
			result.append("<br/><option>�а�</option>");
			result.append("<br/><option>���</option>");
			result.append("<br/><option>ѧǰ��</option>");
		}
		if(type=="Сѧ"||type.equals("Сѧ")){
			result.append("<br/><option>һ�꼶</option>")
			  .append("<br/><option>���꼶</option>")
			  .append("<br/><option>���꼶</option>")
			  .append("<br/><option>���꼶</option>")
			  .append("<br/><option>���꼶</option>")
			  .append("<br/><option>���꼶</option>");
		}
		if(type=="һ�꼶"||type.equals("һ�꼶")){
			result.append("<br/><option>һ��</option>")
			  .append("<br/><option>����</option>")
			  .append("<br/><option>����</option>")
			  .append("<br/><option>�İ�</option>")
			  .append("<br/><option>���</option>");
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