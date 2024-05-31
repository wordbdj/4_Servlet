<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int length = Integer.parseInt(request.getParameter("length"));
	
		// 여러값 파라미터 한번에 받아오기
		String[] types = request.getParameterValues("type");
		
	%>
	<div class="container">
		<h1>길이 변환</h1>
		<h3><%= length %>cm</h3>
		<hr>
		<h2>
	<% 

		if (types != null) {
			for (String type : types) {
				if(type.equals("inch") == true) {
					double inch = length*0.393701;
					out.print("<b>"  +inch +  "in</b><br>"); 
				} else if (type.equals("yard")== true){
					double yard = length*0.010936133333333;
					out.print("<b>" + yard + "yd</b><br>"); 
				} else if (type.equals("feet")== true) {
					double feet = length*0.0328084;
					out.print("<b>" + feet + "ft</b><br>"); 
				} else if (type.equals("meter")== true) {
					double meter = length*0.01;
					out.print("<b>" + meter + "m</b><br>"); 
				}
			}
		}
		
	%>
	</h2>
		
	</div>
</body>
</html>