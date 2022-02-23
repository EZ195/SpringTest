<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력 정보 확인</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
	
	<div class="container">
		<h1>공인중개사</h1>
		
		<table class="table">
			<tr>
				<td>ID</td>
				<td>${realtor.id }</td>
			</tr>
			<tr>
				<td>상호명</td>
				<td>${realtor.office }</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>${realtor.phoneNumber }</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>${realtor.address }</td>
			</tr>
			<tr>
				<td>등급</td>
				<td>${realtor.grade }</td>
			</tr>
		</table>
	</div>

	
</body>
</html>