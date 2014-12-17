<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="EUC-KR">
<style>
   canvas {border:1px solid #E6E6E6; }
</style>
</head>

<body>
	<canvas id="capabilityCanvas" height="500" width="700"></canvas>

<%
		String allCount = request.getAttribute("allCount").toString();
		String capability;
		int arrLength = (Integer)request.getAttribute("capabilityLength");
		int[] groupArray = new int[arrLength];
		
		for(int i=0; i<arrLength-1; i++) {
			capability = request.getAttribute("capability"+i).toString();
			groupArray[i] = (int)Float.valueOf(capability).floatValue();
		}
%>

	<script>	 
 		var canvas = document.getElementById("capabilityCanvas");
		var context = canvas.getContext("2d");

		context.beginPath();
		context.moveTo(50,50);
		context.lineTo(50,450);
		context.lineTo(650,450);
		context.lineWidth=1;
		context.strokeStyle="#000";
		context.stroke();
		context.closePath();
		
		//100눈금
		context.beginPath();
		context.moveTo(45, 50);
		context.lineTo(650, 50);
		context.lineWidth=1;
		context.strokeStyle="#D6D6D6";
		context.stroke();
	    context.closePath();

	    //y출
		context.fillStyle="#000";
		context.font="10px 돋움";
	    context.fillText("직무능력(%)",32,23);
	    //100
		context.fillStyle="#000";
		context.font="12px 돋움";
	    context.fillText("100",22,55);
		//90
		context.beginPath();
		context.moveTo(45, 90);
		context.lineTo(650, 90);
		context.lineWidth=1;
		context.strokeStyle="#D6D6D6";
		context.stroke();
	    context.closePath();
		context.fillStyle="#000";
		context.font="12px 돋움";
	    context.fillText("90",27,95);
	    //80
		context.beginPath();
		context.moveTo(45, 130);
		context.lineTo(650, 130);
		context.lineWidth=1;
		context.strokeStyle="#D6D6D6";
		context.stroke();
	    context.closePath();
		context.fillStyle="#000";
		context.font="12px 돋움";
	    context.fillText("80",27,135);
		//70
		context.beginPath();
		context.moveTo(45, 170);
		context.lineTo(650, 170);
		context.lineWidth=1;
		context.strokeStyle="#D6D6D6";
		context.stroke();
	    context.closePath();
		context.fillStyle="#000";
		context.font="12px 돋움";
	    context.fillText("70",27,175);
		//60
		context.beginPath();
		context.moveTo(45, 210);
		context.lineTo(650, 210);
		context.lineWidth=1;
		context.strokeStyle="#D6D6D6";
		context.stroke();
	    context.closePath();
		context.fillStyle="#000";
		context.font="12px 돋움";
	    context.fillText("60",27,215);
	    //50
		context.beginPath();
		context.moveTo(45, 250);
		context.lineTo(650, 250);
		context.lineWidth=1;
		context.strokeStyle="#D6D6D6";
		context.stroke();
	    context.closePath();
		context.fillStyle="#000";
		context.font="12px 돋움";
	    context.fillText("50",27,255);
		//40
		context.beginPath();
		context.moveTo(45, 290);
		context.lineTo(650, 290);
		context.lineWidth=1;
		context.strokeStyle="#D6D6D6";
		context.stroke();
	    context.closePath();
		context.fillStyle="#000";
		context.font="12px 돋움";
	    context.fillText("40",27,295);
		//30
		context.beginPath();
		context.moveTo(45, 330);
		context.lineTo(650, 330);
		context.lineWidth=1;
		context.strokeStyle="#D6D6D6";
		context.stroke();
	    context.closePath();
		context.fillStyle="#000";
		context.font="12px 돋움";
	    context.fillText("30",27,335);
	    //20
		context.beginPath();
		context.moveTo(45, 370);
		context.lineTo(650, 370);
		context.lineWidth=1;
		context.strokeStyle="#D6D6D6";
		context.stroke();
	    context.closePath();
		context.fillStyle="#000";
		context.font="12px 돋움";
	    context.fillText("20",27,375);
		//10
		context.beginPath();
		context.moveTo(45, 410);
		context.lineTo(650, 410);
		context.lineWidth=1;
		context.strokeStyle="#D6D6D6";
		context.stroke();
	    context.closePath();
	    context.fillStyle="#000";
		context.font="12px 돋움";
	    context.fillText("10",27,415);
	    //0
	    context.fillStyle="#000";
	  	context.font="12px 돋움";
      	context.fillText("0",33,455);
	</script>

</body>
</html>