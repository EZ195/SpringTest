<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Members</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
	<h1>회원 정보 리스트</h1>
	<table border="1" class="table">
		<tr>
			<td>No</td>
			<td>이름</td>
			<td>전화번호</td>
			<td>국적</td>
			<td>이메일</td>
			<td>자기소개</td>
		</tr>
		<c:forEach var="mem" items="${members }" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${mem.name }</td>
				<td>
				<c:choose>
					<c:when test="${fn:startsWith(mem.phoneNumber , '010') }">
						${mem.phoneNumber }					
					</c:when>
					<c:otherwise>
						유효하지 않은 전화번호
					</c:otherwise>
				</c:choose>
				</td>
				<td>${fn:replace(mem.nationality, "삼국시대", "삼국 -") }</td>
				<td><b>${fn:split(mem.email, "@")[0] }</b>@${fn:split(mem.email, "@")[1] }</td>
				<td>
					<c:choose>
						<c:when test="${fn:length(mem.introduce) > 15 }">
							${fn:substring(mem.introduce, 0, 15) }...
						</c:when>
						<c:otherwise>
							${mem.introduce }
						</c:otherwise>
					</c:choose>
					</td>
			</tr> 
		</c:forEach>
	</table>
	</div>
</body>
</html>