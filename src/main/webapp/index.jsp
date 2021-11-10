<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>login</title>

		<link rel="stylesheet" href="./css/login.css">

	</head>
	<body>
		<div class="login-box" >
		  	<h2>Login</h2>
			<form action="${pageContext.request.contextPath}/login" method="post" class="login-form" id="startlogin">
<!--				role="form" action="/login" method="post"-->
				<div class="user-box">
					<input type="text" id="userNo" name="userNo" onkeydown=KeyDown() required>
					<label>Username</label>
				</div>
				<div class="user-box">
					<input type="password" id="password" name="password" onkeydown=KeyDown() required>
					<label>Password</label>
				</div>

				<div align="center">
					<font size="2" color="red">${message}</font>
				</div>

				<div class="center-me">
					<div onclick="document:startlogin.submit();" id="subbutton">
						<span></span>
						<span></span>
						<span></span>
						<span></span>
						Submit
					</div>
<%--					回车登录--%>
					<script type="text/javascript">
						//回车登陆
						function KeyDown() {
							if (event.keyCode == 13) {
								console.log(event.keyCode);
								document.getElementById("subbutton").click();  //类选择器选择按钮
							}
						}
					</script>
<%--					<a href="home.jsp">--%>
<%--						<span></span>--%>
<%--						<span></span>--%>
<%--						<span></span>--%>
<%--						<span></span>--%>
<%--						Submit--%>
<%--					</a>--%>
				</div>
			</form>
<!--			<form role="form" action="${pageContext.request.contextPath}/student/login" method="post" class="login-form">-->
<!--				<div class="form-group">-->
<!--					<label class="sr-only" for="form-username"></label>-->
<!--					<input type="text" placeholder="学号：" class="form-username form-control" id="userNo" name="userNo" required>-->
<!--				</div>-->
<!--				<div class="form-group">-->
<!--					<label class="sr-only" for="form-password"></label>-->
<!--					<input type="password" placeholder="密码：" class="form-password form-control" id="password" name="password" required>-->
<!--				</div>-->
<!--				<div align="center">-->
<!--					<font size="4" color="red">${message}</font>-->
<!--				</div>-->
<!--				<button type="submit" class="btn">登录</button>-->
<!--			</form>-->

		</div>
	</body>
</html>
