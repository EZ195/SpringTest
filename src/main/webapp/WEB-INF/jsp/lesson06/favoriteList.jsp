<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	
	<h1>즐겨찾기 목록</h1>
	<div class="container">
	<table class="table">
		<tr>
			<td>No.</td>
			<td>이름</td>
			<td>주소</td>
			<td></td>
		</tr>
		<c:forEach var="list" items="${favorite }" varStatus="status">
		<tr>
			<td>${status.count }</td>
			<td>${list.name }</td>
			<td>${list.url }</td>			
			<td><button class="deleteBtn btn btn-danger btn-sm" type="button" data-id="${list.id }">삭제</button></td>
			<%--data-id="${list.id }" data를 꼭 넣고 대문자는 X -와 소문자로 변수명 구성 권장 id를 ajax로 활용하기 위해 사용 --%>
		</tr>
		</c:forEach>
	</table>
	</div>
	
	<script>
		$(document).ready(function(){
			$(".deleteBtn").on("click" , function(){
				
				// 지금 현재 발생한 이벤트를 가져오는 방법 this 키워드를 사용
				// data 속성을 꺼내쓰는 데이터 문법도 data() 괄호 안에 - 뒤의 이름 가져오면 됨
				let favoriteId = $(this).data("id");				
				
				$.ajax({
					type:"get",
					url:"/lesson06/deleteList",
					data:{"id":favoriteId},
					success:function(data) {
						
						if(data.result == "success") {
							
							alert("삭제되었습니다.")
							//새로고침
							location.reload();
							
						}
						else {
							alert("삭제 실패")
						}
							
						
					},
					error:function(){
						alert("삭제에러");
					}
					
				});
			});
		});
	</script>
</body>
</html>