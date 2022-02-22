<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Seller</title>
</head>
<body>
	
	<h1>판매자 추가</h1>
	
	<form action="/lesson04/test01/add_seller" method="post">
		<label>닉네임</label><br><input type="text" name="nickname"><br>
		<label>프로필 사진 url</label><br><input type="text" name="profileImageUrl"><br>
		<label>온도</label><br><input type="text" name="temperature"><br>
		
		<button type="submit" value="추가"></button>
	</form>
	
</body>
</html>