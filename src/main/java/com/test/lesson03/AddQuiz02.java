package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/quiz02_add")
public class AddQuiz02 extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// request parameters
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// DB 켜기
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// add query
		String addQuery = "insert into `bookmark`"
				+ "(`name`, `url`)"
				+ "values"
				+ "('" + name + "', '" + url + "')";
		try {
			ms.update(addQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		
		// DB 끄기 
		ms.disconnect();
		
		// redirect 
		response.sendRedirect("/lesson03/quiz02.jsp");
		
	}

}
