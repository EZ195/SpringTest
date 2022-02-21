<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Seller Info</title>
</head>
<body>
	<h2>판매자 정보</h2>
	<table>
		<tr>
			<td><img src="${result.profileImageUrl }" width="100" height="100" alt="프로필 이미지"></td>
		</tr>
		<tr>
			<td>${result.nickname }</td>
		</tr>
		<tr>
			<td>${result.temperature }</td>
		</tr>
	
	</table>

</body>
</html>