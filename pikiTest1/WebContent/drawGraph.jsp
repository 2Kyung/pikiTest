<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script>
	var canvas = document.getElementById("capabilityCanvas");
	var context = canvas.getContext("2d");
	
	var group[] = 
	
	context.beginPath();
	context.moveTo(50,50);
	context.lineTo(50,350);
	context.lineTo(650,350);
	context.lineWidth=1;
	context.strokeStyle="#000";
	context.stroke();
	context.closePath();
</script>

</head>
<body>

<canvas id="capabilityCanvas" height="450" width="700"></canvas>

</body>
</html>