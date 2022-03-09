<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>


    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

    <link rel="stylesheet" href="/lesson06/booking/css/style.css" type="text/css">
</head>
<body>

	<div id="wrap">
		<header class="mt-4">
       		<div class="text-center display-4">통나무 팬션</div>
		</header>
			<nav class="main-menu">
	        	<ul class="nav nav-fill">
	            	<li class="nav-item"> <a class="nav-link text-white" href="#">팬션소개</a></li>
	            	<li class="nav-item"> <a class="nav-link text-white" href="#">객실보기</a></li>
	            	<li class="nav-item"> <a class="nav-link text-white" href="/booking/bookingForm">예약하기</a></li>
	            	<li class="nav-item"> <a class="nav-link text-white" href="/booking/getList">예약리스트</a></li>
	        	</ul>
			</nav>
		<div class="container">
			<h1>에약목록보기</h1>
			<table class="table">
				<tr>
					<th>이름</th>
					<th>예약날짜</th>
					<th>숙박일수</th>
					<th>숙박인원</th>
					<th>전화번호</th>
					<th>예약상태</th>
					<th></th>
				</tr>
				<c:forEach var="list" items="${book }">
					<tr>
						<td>${list.name }</td>
						<td><fmt:formatDate value="${list.date }" pattern="yyyy년 MM월 dd일" /></td>
						<td>${list.day }</td>
						<td>${list.headcount }</td>
						<td>${list.phoneNumber }</td>
						
						<c:choose>
							<c:when test="${list.state eq '확정'}">
								<td class="text-success">${list.state }</td>								
							</c:when>
							<c:when test="${list.state eq '대기중'}">
								<td class="text-info">${list.state }</td>								
							</c:when>
							<c:when test="${list.state eq '취소'}">
								<td class="text-danger">${list.state }</td>							
							</c:when>
							<c:otherwise>
								<td></td>
							</c:otherwise>
						</c:choose>
						
						<td><button type="button" class="deleteBtn btn btn-danger btn-sm" data-id="${list.id }">삭제</button></td>	
					</tr>
				</c:forEach>
			</table>
		</div>
		<footer class="mt-3 ml-4">
			<address>
		    	제주특별자치도 제주시 애월읍  <br>
		        사업자등록번호: 111-22-255222 / 농어촌민박사업자지정 / 대표:김통목 <br>
		        Copyright 2025 tongnamu All right reserved
	        </address>
		</footer>
	</div>
	<script>
		$(document).ready(function(){
			$(".deleteBtn").on("click" , function(){
				
				let deleteId = $(this).data("id");
				
				$.ajax({
					type:"get",
					url:"/booking/deleteBooking",
					data:{"id":deleteId},
					success:function(data) {
						if(data.result == "success") {
							alert("삭제되었습니다.");
							location.reload();
						}
						else {
							alert("삭제 실패");
						}
					},
					error:function(){
						alert("삭제 에러");
					}
					
				});
			});
		});
	</script>
</body>
</html>