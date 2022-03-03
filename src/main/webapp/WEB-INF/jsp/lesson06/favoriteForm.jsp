<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	
	<div class="container">
	<h1>즐겨찾기 추가하기</h1>
	<label>제목</label><br>
		<input type="text" class="form-control" name="name" id="nameInput"><br>
	<label>주소</label><br>
		<input type="text" class="form-control" name="url" id="urlInput">
		
	<button type="button" class="btn btn-info btn block" id="addBtn">추가</button>
	</div>
	<script>
	
		$(document).ready(function(){
	
			$("#addBtn").on("click" , function(){
				
				let name = $("#nameInput").val();
				let url = $("#urlInput").val();
				let https = url.includes('https://') == false;
				alert(name + " " + url);
				
				//유효성 기능
				if(name == "") {
					alert("제목을 입력하세요!!!")
					return;
				}
				
				if(url == "") {
					alert("주소를 입력하세요!!!")
					return;
				}
				
				if(https) {
					alert("주소를 확인해주세요!!!")
					return;
				}
				
				
				$.ajax({
					type:"post",
					url:"/lesson06/addFavorite",
					data:{"name":name,"url":url},
					
					success:function(data) {
						if (data == "success") {
							location.href = "/lesson06/favoriteList";							
						}
						else if (data == "fail") {
							alert("확인부탁");
						}
							
					},
					error:function() {
						alert("입력에러")
					}
						
				});
			});
		});
	</script>
	
	

</body>
</html>