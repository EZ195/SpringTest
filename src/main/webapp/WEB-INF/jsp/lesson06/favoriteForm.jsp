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

<style>
	#duplication {
		display:none;
	}
	#notDuplication {
		display:none;
	}
</style>
	
	<div class="container">
	<h1>즐겨찾기 추가하기</h1>
	<div>
	<label>제목</label><br>
		<input type="text" class="form-control" name="name" id="nameInput"><br>
	</div>
	<div>
	<label>주소</label><br>
		<input type="text" class="form-control" name="url" id="urlInput"><button type="button" id=duplicate>중복확인</button><br>
	</div>
	
	<div id="duplication"><small class="text-danger">중복된 url 입니다.</small></div>
	<div id="notDuplication"><small class="text-primary">저장 가능한 url 입니다.</small></div>
	
	<button type="button" class="btn btn-info btn block" id="addBtn">추가</button>
	</div>
	<script>
	
		$(document).ready(function(){
			
			// 중복체클르 했는지 여부 저장하는 변수
			var isChecked = false;
			
			// 중ㅈ복된 상태인지 확인하는 변수
			var isDuplicate = true;
			
			// url 입력내용 수정
			$("#urlInput").on("input" , function() {
				
				// 중복관련 변수 값 초기화
				isChecked = false;
				isDuplicate = true;
				
				// 중복 관련 텍스트 숨기기
				$("#duplication").hide();
				$("#notDuplication").hide();
				
			});
			
			$("#duplicate").on("click" , function(){
				
				let url = $("#urlInput").val();
				let https = url.includes('https://') == false;
				let http = url.startsWith('http://') == false;
				
				if(url == "") {
					alert("주소를 입력하세요!!!")
					return;
				}
				
				if(https && http) {
					alert("주소를 확인해주세요!!!")
					return;
				}
				
				$.ajax({
					type:"post",
					url:"/lesson06/duplicate",
					data:{"url":url},

					success:function(data) {
						
						// 중복 체크 확인
						isChecked = true;
						
						//
						$("#duplication").hide();
						$("#notDuplication").hide();
						
						if (data.is_duplicate) {
							$("#duplication").show();	
						}
						else {
							isDuplicate - false;
							$("#notDuplication").show();
						}
							
					},
					error:function() {
						alert("입력에러")
					}
						
				});
				
				
			});
	
			$("#addBtn").on("click" , function(){
				
				let name = $("#nameInput").val();
				let url = $("#urlInput").val();
				let https = url.includes('https://') == false;
				let http = url.startsWith('http://') == false;
				
				//유효성 기능
				
				if(name == "") {
					alert("제목을 입력하세요!!!")
					return; // 중간의 코드 중단하기 위해
				}
				
				if(url == "") {
					alert("주소를 입력하세요!!!")
					return;
				}
				
				if(https && http) {
					alert("주소를 확인해주세요!!!")
					return;
				}
				
				// 중복 체크 확인 여부
				
				if(isChecked == false) {
					
					alert("중복 확인을 진행해 주세요");
					return ;
				}
				
				if(isDuplicate == true){
					alert("url이 중복되었습니다.");
					return;
				}
				
				// ajax를 통한 api호출
				
				$.ajax({
					type:"post",
					url:"/lesson06/addFavorite",
					data:{"name":name, "url":url},
				
					// 성공여부에 따른 기능 분기
					success:function(data) {
						if (data.result == "success") {
							location.href = "/lesson06/favoriteList";							
						}
						else {
							alert("즐겨찾기 추가 실패ㅠ");
						}
							
					},
					error:function() {
						alert("입력에러") //입력에러 출력시 검사 통해서 확인  404 -> 경로 에러 /405 -> 메소드 에러 api에러 / 400 -> 파라미터 오류 / 500 -> 서버 측에 만들어둔 것 컨트롤러 비오 등등에 에러
						
						
					}
						
				});
			});
		});
	</script>
	
	

</body>
</html>