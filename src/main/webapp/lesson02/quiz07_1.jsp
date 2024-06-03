<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<%
		String menu = request.getParameter("menu");
		String starFilter = request.getParameter("starFilter");
		
		List<Map<String, Object>> list = new ArrayList<>();
	    
		Map<String, Object> map = new HashMap<String, Object>() {
	    	
	    {put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	    list.add(map);
	    
	    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	    list.add(map);
	    
	    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	    list.add(map);
	    
	    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	    list.add(map);
	    
	    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	    list.add(map);
	    
	    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	    list.add(map);
	    
	    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	    list.add(map);
	%>
	
	<div class="container">
		<h1 class="text-center">검색 결과</h1>
			<table class="table text-center">
				<thead>
					<tr>
						<th>메뉴</th>
						<th>상호</th>
						<th>별점</th>
					</tr>
				</thead>
				<tbody>
				<%
					for (Map<String, Object> item : list) {
						Double foodPoint = Double.valueOf(item.get("point").toString());
						boolean exclude = starFilter != null;
						
							
						if(item.get("menu").equals(menu) == false) {
							// skip 조건이 체크되어 있고 스킵 되어야 할때 skip(continue)
							continue;
						} else if (exclude && foodPoint <= 4.0) {	// 4점 이하 제외 	체크됨:"true" 체크안됨:nulls
							continue;
						} else {
						
				%>
					<tr>
						<th><%= item.get("menu") %></th>						
						<th><%= item.get("name") %></th>
						<th><%= item.get("point") %></th>
					</tr>
				<%
						}
					}
				%>
					
				</tbody>
			</table>
	</div>
</body>
</html>