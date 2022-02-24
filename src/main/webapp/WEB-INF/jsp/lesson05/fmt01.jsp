<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fmt 라이브러리</title>
</head>
<body>
	<h1>1. 후보자 득표율 </h1>
	<table border="1">
		<tr>
			<td>기호</td>
			<td>득표수</td>
			<td>득표율</td>
		</tr>
		<c:forEach var="vote" items="candidate" varStatus="status">
		<tr>
			<td>${status.count }</td>
			<td><fmt:formatNumber value="${vote }"/></td>
			<td>%</td>
		</tr>
		</c:forEach>
	</table>
	
	
</body>
</html>