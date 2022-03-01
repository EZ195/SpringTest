<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨 입력</title>
</head>
<body>
	<form action="weather/insertWeather" method="post">
		<label>날짜</label><input type="text" name="date">
		<label>날씨
			<select name="weather">
				<option value="sunny">맑음</option>
				<option value="little">구름조금</option>
				<option value="cloudy">흐림</option>
				<option value="rainy">비</option>
			</select>
		</label>
		<label>미세먼지
			<select name="">
				<option value="good">좋음</option>
				<option value="soso">보통</option>
				<option value="bad">나쁨</option>
				<option value="worst">최악</option>
			</select>
		</label><br>
		<label>기온</label><input type="text" name="">
		<label>강수량</label><input type="text" name="">
		<label>풍속</label><input type="text" name=""><br>
		
		<button>저장</button>
		<input type="submit" value="저장" />
	</form>
</body>
</html>