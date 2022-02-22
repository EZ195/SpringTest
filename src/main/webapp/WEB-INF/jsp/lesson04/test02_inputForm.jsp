<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록 양식</title>
</head>
<body>
	<h1>공인중개사 추가</h1>
	<form action="/lesson04/test02/addRealtor" method="post">
		<label>상호명</label><input type="text"><br>
		<label>전화번호</label><input type="text"><br>
		<label>주소</label><input type="text"><br>
		<label>등급</label><input type="text"><br>
		<button type="submit">추가</button>
	</form>

</body>
</html>