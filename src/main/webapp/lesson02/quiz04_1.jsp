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
		String[] unitArr = request.getParameterValues("unit");
		
		
		
		if (unit != null) {
			for(String value : unit) {
				if(value.equals("inch")) {
					out.print
				} else if (value.equals("yard")){
					out.print((double)length * 0.0109361 + "yard");
				} else if (value.equals("feet")) {
					out.print(double)length * 0.393701 + "in");
				} else if (value.equals("meter")) {
					out.print(double)length * 0.393701 + "in");
				}
			}
		}
		
	%>
	
	<div class="container">
		<h1>길이 변환</h1>
		
	</div>
</body>
</html>