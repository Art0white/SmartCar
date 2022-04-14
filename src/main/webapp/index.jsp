<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>login</title>

	</head>
	<body>
		<form action="${pageContext.request.contextPath}/home" method="post" id="index"></form>
		<s:if test="commodities==null">
			<script>
				window.onload = function () {
					document.getElementById("index").submit();
				}
			</script>
		</s:if>
	</body>
</html>
