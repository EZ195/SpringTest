<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>등록 양식</title>
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