<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>mine</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
		<link rel="stylesheet" href="../../css/mine.css">
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
								<div id="carvideo" class="carvideo">
									<video id="video" class="center" style="height: 360px; width: 480px;"></video>
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
							<div style="text-align: center">设备情况</div>
							<table align='center' border='1' cellspacing='0'>
								<thead>
								<tr>
									<td>equipmentNo</td>
									<td>state</td>
									<td>updateTime</td>
								</tr>
								</thead>
								<tbody>
								<c:forEach var="e" items="${requestScope.list}" varStatus="status">
<%--									<tr>--%>
<%--										<td>${e.equipmentNo}</td>--%>
<%--										<td>${e.state}</td>--%>
<%--										<td>${e.updateTime}</td>--%>
<%--									</tr>--%>
								</c:forEach>
								</tbody>
							</table>

							<!-- 创建表格 -->
<%--							<table align='center' border='1' cellspacing='0'>--%>
<%--								<tr>--%>
<%--									<td>equipmentNo</td>--%>
<%--									<td>state</td>--%>
<%--									<td>updateTime</td>--%>
<%--								</tr>--%>
<%--								<c:forEach var="e" items="${equipmentListw}" varStatus="status">--%>
<%--									<tr>--%>
<%--										<td>${e.equipmentNo}</td>--%>
<%--										<td>${e.state}</td>--%>
<%--										<td>${e.updateTime}</td>--%>
<%--									</tr>--%>
<%--								</c:forEach>--%>
<%--							</table>--%>

						</div>
					</div>
				</div>
			</div>
		</div>

		<%--摄像头--%>
		<script>
			var video = document.getElementById('video');

			if (navigator.mediaDevices.getUserMedia) {
				//最新的标准API
				navigator.mediaDevices.getUserMedia({video : {width: 1000, height: 1000}}).then(success).catch(error);
			} else if (navigator.webkitGetUserMedia) {
				//webkit核心浏览器
				navigator.webkitGetUserMedia({video : {width: 1000, height: 1000}},success, error)
			} else if (navigator.mozGetUserMedia) {
				//firfox浏览器
				navigator.mozGetUserMedia({video : {width: 1000, height: 1000}}, success, error);
			} else if (navigator.getUserMedia) {
				//旧版API
				navigator.getUserMedia({video : {width: 1000, height: 1000}}, success, error);
			}

			function success(stream) {
				//兼容webkit核心浏览器
				// let CompatibleURL = window.URL || window.webkitURL;

				//将视频流设置为video元素的源
				console.log(stream);

				//video.src = CompatibleURL.createObjectURL(stream);
				video.srcObject = stream;
				video.play();
			}

			function error(error) {
				console.log(`访问用户媒体设备失败${error.name}, ${error.message}`);
			}

		</script>
	</body>
</html>
