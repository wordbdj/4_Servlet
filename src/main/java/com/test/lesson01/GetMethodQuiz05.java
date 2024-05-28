package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/HTML");
		
		PrintWriter out = response.getWriter();
		
		if (request.getParameter("number") != null) {
		
			
		int number = Integer.parseInt(request.getParameter("number"));
		out.println("<html><head></head><body><ul>");
		for (int i = 1; i < 10; i++) {
			out.println("<li>" + number + " X " + i + " = " + (number*i) + "</li>");
		}
		out.println("</ul></body></html>");
				
			
		}	
		
	}
}
