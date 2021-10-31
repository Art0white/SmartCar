<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<%--清理缓存--%>
		<meta HTTP-EQUIV="pragma" CONTENT="no-cache"> <meta HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate"> <meta HTTP-EQUIV="expires" CONTENT="0">
		<title>mine</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
		<link rel="stylesheet" href="css/mine.css">
		<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
	</head>

	<body>
		<!-- 导航 -->
		<nav class="ui inverted attached segment m-padded-tb-mini ">
			<div class="ui container">
				<div class="ui inverted seconfary menu">
					<h2 class="ui teal header item">矿洞实时检测</h2>
					<a href="home.jsp" class="item"><i class="home icon"></i>主页</a>
					<a href="car.jsp" class="item"><i class="idea icon"></i>小车</a>
					<a href="" class="item"><i class="tags icon"></i>矿洞</a>
					<a href="team.jsp" class="item"><i class="info icon"></i>关于我们</a>
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

		<div class="m-container m-padded-tb-large">
			<div class="ui container">
				<div class="ui grid">
					<%--左十--%>
					<div class="eleven wide column">
						<div class="two column row">
							<%--左十上--%>
							<div class="column">
								<div id="ourmap" class="ourmap">
								</div>
							</div>
							<%--左十下--%>
							<div class="column">
								<div id="smodule" class="smodule">

								</div>
							</div>
						</div>
					</div>

					<%--右六--%>
					<div class="five wide column">  <!-- style="background-color: #03E9F4;" -->
						<div id="list" class="list">  <%--style="text-align: center;"--%>
							<div class="ttable" style="text-align: center; line-height: 50px;">设备情况</div>
							<div class="tbl-header">
								<table align='center' cellpadding="0" cellspacing="0" border="0">
									<thead>
									<tr>
										<td>equipmentNo</td>
										<td>state</td>
										<td>updateTime</td>
									</tr>
									</thead>
								</table>
							</div>

							<div class="tbl-content">
								<table align='center' cellpadding="0" cellspacing="0" border="0">
									<tbody>
									<c:forEach var="e" items="${sessionScope.equipmentListw}" varStatus="status">
										<tr>
											<td>${e.equipmentNo}</td>
											<td style="text-align: center;">${e.state}</td>
											<td>${e.updateTime}</td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<script type="text/javascript">   <%--自动刷新局部div--%>
							setInterval(function() {
								$("#list").load(location.href+" #list>*","");
							}, 5000);
						</script>
					</div>
				</div>
			</div>
		</div>


	</body>
</html>
