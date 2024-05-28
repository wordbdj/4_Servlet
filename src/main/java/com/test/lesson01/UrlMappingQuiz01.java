package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UrlMappingQuiz01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
		
//		오늘 날짜 출력
//		오늘 날짜를 출력하세요.
//		- web.xml URL Mapping 후 servlet을 이용해서 출력하세요.
//		- Content Type은 text/plain으로 설정하세요.
//		출력 예시
//		오늘의 날짜는 20XX년 X월 XX일
		
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("오늘의 날짜는 yyyy년 M월 d일");
		out.println(sdf.format(now));
		
	}

	
	
}
