<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="EUC-KR">
<title>Piki Test Main</title>
<style>
	iframe {border-style:none; width:100%; }
	aside, section {display:block; }
	aside {width:10%; float:left; }
	section {margin-bottom:10px; width:85%; height:2000px; float:right; }
</style>
</head>


<body>

<aside>
	<form name="makeGroupForm" method=post action="/pikiTest1/pikiServlet" target="groupFrame">
		<input type="submit" value="make Group" onClick="buttonEnabled()">
		
		<script>
		function buttonEnabled() {
    		document.getElementById("drawGraph").disabled = false;
    		
    		var iframeHeight = document.getElementById("groupFrame").contentWindow.document.body.scrollHeight;
    		document.getElementById("groupFrame").height = iframeHeight;
    		document.getElementById("graphFrame").style.top = iframeHeight;
    		
    		var graphIFrame = document.getElementById("graphFrame").contentWindow.document;
    		graphIFrame.open();
    		graphIFrame.close();
		}
		</script>
	
	</form>
	<form name="drawGraphForm" method=get action="/pikiTest1/pikiServlet" target="graphFrame">
		<input type="submit" value="draw Graph" id="drawGraph" disabled onClick="buttonDisabled()">
		
		<script>
		function buttonDisabled() {
			var iframeHeight = document.getElementById("groupFrame").contentWindow.document.body.scrollHeight;
			document.getElementById("graphFrame").style.top = iframeHeight;
			
    		document.getElementById("drawGraph").disabled = true;
		}
		</script>
		
	</form>
</aside>

<section>
	<iframe name="groupFrame" id="groupFrame" onLoad="autoResizeGroup()"></iframe>
	<iframe name="graphFrame" id="graphFrame" height="1000"></iframe>
	
	<script>
		function autoResizeGroup() {
			var iframeHeight = document.getElementById("groupFrame").contentWindow.document.body.scrollHeight;
    		document.getElementById("groupFrame").height = iframeHeight;
    		
    		var iframeHeight = document.getElementById("groupFrame").contentWindow.document.body.scrollHeight;
			document.getElementById("graphFrame").style.top = iframeHeight;
		}
	</script>
	
</section>

</body>
</html>