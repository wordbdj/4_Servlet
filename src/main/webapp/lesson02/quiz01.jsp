<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<%! 
		// 01)
		public int getAddition(int n) {
			int total = 0;
			for (int i = 1; i <= n; i++) {
				total += i;
			}
			return total;
		}
	%>

	<%
		// 02)
		int[] scores = {81, 90, 100, 95, 80};
		int total = 0; 
	 	for (int i = 0; i < scores.length; i++) {
	 		total += scores[i];
	 	}
	 	double average = (double)total/scores.length;
	%>

	<%  
		// 03)
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		Iterator<String> iter = scoreList.iterator();
		int score = 0;
		while(iter.hasNext()) {
			if (iter.next() == "O") {
				score += 10;
			} else {
				continue;
			}
		}
		
		// for (int i -0; i < scoreList.size(); i++) {
		//		//out.print(scoreList.get(i))
		//		if(scoreList.get(i).equals("O")) {
		//			score += 100/ scoreList.size; 
		// 		}
		//	}
	 %>

	 <%
		// 04) 
	 	String birthDay = "20010820";
		String year = birthDay.substring(0, 4);
		int age = 2024 - Integer.parseInt(year); 
	
	 %>
	 
	<h2>1부터 50까지의 합은<%= getAddition(50) %>입니다.</h2> 
	<h2>평균점수는 <%= average %>입니다.</h2> 
	<h2>채점 결과는 <%= score %>점 입니다.</h2>
	<h2><%= birthDay%>의 나이는  <%= age %>세 입니다.</h2> 
</body>
</html>