<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<title>Quiz03</title>
</head>
<body>
	<div class="container">
		<div>
			<h1>채격 조건 입력</h1>
		</div>
		<form action="/lesson02/quiz03_1.jsp" method="get">
			<div class="d-flex align-items-end">
			<input type="text" id="height" name="height" class="form-control col-2 mr-2" placeholder="키를 입력하세요">cm
			<input type="text" id="weight" name="weight" class="form-control col-2 mx-2" placeholder="몸무게를 입력하세요">kg
			<input type="submit" value="계산" class="btn btn-info ml-2">
			</div>
		</form>
	</div>
</body>
</html>