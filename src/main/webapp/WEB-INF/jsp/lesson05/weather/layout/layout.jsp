<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
</head>
<body>
	<div id="outer_wrap">
		<div id="wrap">
			<div class="clear"></div>
			<aside>
				<tiles:insertAttribute name="side" />
			</aside>
			<article>
			 	<tiles:insertAttribute name="body" />
			</article>
			<div class="clear"></div>
			<footer>
        		<tiles:insertAttribute name="footer" />
        	</footer>
		</div>
    </div>        	
</body>
</html>