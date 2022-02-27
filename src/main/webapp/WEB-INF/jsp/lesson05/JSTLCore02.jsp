<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core 라이브러리 2</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	
	
	<div class="container">
	<h1>HOT 5</h1>
		<table border="1" class="table table-striped">
			<tr align=center>
				<td>순위</td>
				<td>제목</td>
			</tr>
			<c:forEach var="music" items="${musicR }" varStatus="status">
			<tr align=center>
				<td>${status.count }</td>
				<td>${music }</td>
			</tr>
			</c:forEach>			
		</table>
		<br><br>
	</div>
	<div class="container">
	<h1>멤버십</h1>
		
		<table border="1" class="table">
			<tr align="center">
				<td>이름</td>
				<td>전화번호</td>
				<td>등급</td>
				<td>포인트</td>
			</tr>
			<c:forEach var="members" items="${membership}">
			<tr align="center">
				
				<td>${members.name }</td>
				<td>${members.phoneNumber }</td>
				<c:choose>
				<c:when test="${members.grade eq 'VIP' }">
					<td class="text-danger">${members.grade }</td>
				</c:when>
				<c:when test="${members.grade eq 'GOLD' }">
					<td class="text-warning">${members.grade }</td>
				</c:when>
				<c:otherwise>
					<td>${members.grade }</td>
				</c:otherwise>
				</c:choose>
				<c:choose>
				<c:when test="${members.point >= 5000 }">
					<td class="text-primary">${members.point }p</td>			
				</c:when>
				<c:otherwise>
					<td>${members.point }p</td>		
				</c:otherwise>
				</c:choose>
			</tr>
			</c:forEach>
		</table>
	</div>	
</body>
</html>