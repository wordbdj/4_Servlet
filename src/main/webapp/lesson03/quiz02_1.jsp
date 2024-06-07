<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<title>즐겨찾기 추가</title>
</head>
<body>
	<div class="container">
		<h1>즐겨찾기 추가</h1>
		<form action="/lesson03/quiz02_add" method="post">
			<div class="form-group">
				<label for="name">사이트명:</label>
				<input type="text" name="name" id="name" class="form-control col-4">
			</div>
			<div class="form-group">
				<label for="url">사이트 주소:</label>
				<input type="text" name="url" id="url" class="form-control col-6">
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-success my-3">추가</button>
			</div>
		</form>
	</div>
</body>
</html>