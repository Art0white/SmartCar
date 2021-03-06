<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
<%--		适配手机--%>
<%--		<meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
		<title>个人界面</title>

		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/customer.css">

	</head>
	<body>
		<!-- 导航 -->
		<nav class="ui inverted attached segment m-padded-tb-mini ">
			<div class="ui container">
				<div class="ui inverted seconfary menu">
					<h2 class="ui teal header item">矿洞实时检测</h2>
					<a href="${pageContext.request.contextPath}/home" class="item"><i class="home icon"></i>主页</a>
					<a href="${pageContext.request.contextPath}/car" class="item"><i class="idea icon"></i>小车</a>
					<a href="${pageContext.request.contextPath}/eqfind" class="item"><i class="tags icon"></i>矿洞</a>
					<a href="" class="item"><i class="info icon"></i>我的</a>
					<a href="${pageContext.request.contextPath}/quit" class="item"><i class="arrow alternate circle right"></i>退出系统</a>

					<div class="right item">
						<div class="ui icon input ">                            <!-- 加   transparent    变透明 -->
							<input type="text" placeholder="Search....">
							<i class="search link icon"></i>
						</div>
					</div>
				</div>
			</div>
		</nav>


		<!--个人信息-->
	</body>
</html>
