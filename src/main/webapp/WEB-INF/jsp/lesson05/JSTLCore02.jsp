<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>JSTL Core 라이브러리 2</title>
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