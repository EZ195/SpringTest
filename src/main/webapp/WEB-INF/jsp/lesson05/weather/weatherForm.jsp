<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨 입력</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<form action="/weather/insertWeather" method="get">
		<div class="d-flex align-items-center">
	    	<div class="input-label">날짜</div> 
	        	<input type="text" class="form-control" id="date" name="date">
	    </div>
		<label>날씨
			<select name="weather">
				<option value="sunny">맑음</option>
				<option value="little">구름조금</option>
				<option value="cloudy">흐림</option>
				<option value="rainy">비</option>
			</select>
		</label>
		<label>미세먼지
			<select name="microDust">
				<option value="good">좋음</option>
				<option value="soso">보통</option>
				<option value="bad">나쁨</option>
				<option value="worst">최악</option>
			</select>
		</label><br>
		<label>기온</label><input type="number" step="0.1" name="temperatures">
		<label>강수량</label><input type="number" step="0.1" name="precipitation">
		<label>풍속</label><input type="number" step="0.1" name="windSpeed"><br>
		
		<button type="submit">저장</button>
	</form>
</body>
</html>