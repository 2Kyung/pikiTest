<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="EUC-KR">
<title>Piki Test Main</title>
<style>
	iframe {border-style:none; }
</style>
</head>


<body>

	<form name="makeGroupForm" method=post action="/pikiTest1/pikiServlet" target="resultFrame">
		<input type="submit" value="make Group">
	</form>

	<iframe name="resultFrame" width="1200" height="800"></iframe>
	
	<form name="drawGraphForm" method=get action="/pikiTest1/pikiServlet" target="graphFrame">
		<input type="submit" value="draw Graph">
	</form>
	
	<iframe name="graphFrame" width="1000" height="1000"></iframe>

</body>
</html>