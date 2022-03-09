<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			<h1>예약하기</h1>
				<label>이름</label>
				<input type="text" name="name" id="nameInput"><br>
				<label>예약날짜</label>
				<input type="date" name="date" id="dateInput"><br>
				<label>숙박일수</label>
				<input type="text" name="day" id="dayInput"><br>
				<label>숙박인원</label>
				<input type="text" name="headcount" id="headcountInput"><br>
				<label>전화번호</label>
				<input type="text" name="phoneNumber" id="phoneNumber"><br>
				<button type="button" id="addBtn">추가</button>
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
			$("#addBtn").on("click" , function(){
				
				let name = $("#nameInput").val();
				let date = $("#dateInput").val();
				let day = $("#dayInput").val();
				let headcount = $("#headcountInput").val();
				let phoneNumber = $("#phoneNumberInput").val();
				
				$.ajax({
					type:"post",
					url:"/booking/addBooking",
					data:{"name":name, "date":date,"day":day,"headcount":headcount,"phoneNumber":phoneNumber},
					success:function(data) {
						if(data.result == "success") {
							
							alert("등록되었습니다.");
							location.href = "/booking/getList";
						}
						
						else {
							alert("등록에 실패했습니다.")
						}
					},
					error:function(){
						alert("에러");
					}					
				});
				
			});
		});
	</script>

</body>
</html>