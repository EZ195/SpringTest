<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록 양식</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<h1>공인중개사 추가</h1><br>
	
	<form action="/lesson04/test02/addRealtor" method="post">
		
		<label>&emsp;상호명</label><br>
		&emsp;<input type="text" name="office" class="form-control" style="display:inline; width:300px;"><br><br>
		
		<label>&emsp;전화번호</label><br>
		&emsp;<input type="text" name="phoneNumber" class="form-control" style="display:inline; width:300px;"><br><br>
		
		<label>&emsp;주소</label><br>
		&emsp;<input type="text" name="address" class="form-control" style="display:inline; width:300px;"><br><br>
		
		<label>&emsp;등급</label><br>
		&emsp;<input type="text" name="grade" class="form-control" style="display:inline; width:300px;"><br><br>
		
		<button type="submit" class="btn btn-primary btn-block">추가</button>
	</form>

</body>
</html>