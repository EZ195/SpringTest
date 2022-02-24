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
	<h1>HOT 5</h1>
	
		<table border="1" class="table table-striped">
			<tr>
				<td align=center>순위</td>
				<td align=center>제목</td>
			</tr>
			<c:forEach var="music" items="${musicR }" varStatus="status">
			<tr>
				<td align=center>${status.count }</td>
				<td align=center>${music }</td>
			</tr>
			</c:forEach>			
		</table>			

</body>
</html>