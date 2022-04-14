<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
<%--		适配手机--%>
<%--		<meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
		<title>用户主页</title>

		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/power.css">
	</head>
	<body>
		<!-- 导航 -->
		<nav class="ui inverted attached segment m-padded-tb-mini ">
			<div class="ui container">
				<div class="ui inverted seconfary menu">
					<h2 class="ui teal header item">矿洞实时检测</h2>
					<a href="" class="item"><i class="home icon"></i>主页</a>
					<a href="${pageContext.request.contextPath}/car" class="item"><i class="idea icon"></i>小车</a>
					<a href="${pageContext.request.contextPath}/eqfind" class="item"><i class="tags icon"></i>矿洞</a>
					<a href="${pageContext.request.contextPath}/customer" class="item"><i class="info icon"></i>我的</a>
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
		
		<!-- 中间 -->
		<!-- pen -->
<%--		<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>--%>
<%--		<script src="https://www.amcharts.com/lib/3/pie.js"></script>--%>
<%--		<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>--%>
<%--		<script src="https://code.jquery.com/jquery-1.12.3.min.js"></script>--%>
		<script type="text/javascript" src="${pageContext.request.contextPath}/vendors/amcharts_3.21.15.free/amcharts/amcharts.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/vendors/amcharts_3.21.15.free/amcharts/pie.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/vendors/amcharts_3.21.15.free/amcharts/themes/light.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/vendors/jquery-1.12/package/dist/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/pen.js"> </script>
		<!-- zhu -->
<%--		<script src="//www.amcharts.com/lib/4/core.js"></script>--%>
<%--		<script src="//www.amcharts.com/lib/4/charts.js"></script>--%>
<%--		<script src="//www.amcharts.com/lib/4/themes/animated.js"></script>--%>
		<script type="text/javascript" src="${pageContext.request.contextPath}/vendors/amcharts_4.10.22/amcharts4/core.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/vendors/amcharts_4.10.22/amcharts4/charts.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/vendors/amcharts_4.10.22/amcharts4/themes/animated.js"></script>
		<script src="${pageContext.request.contextPath}/js/zhu.js"> </script>
		
		<div class="m-container m-padded-tb-large">
			<div class="ui container">
				<div class="ui grid">
					<!-- 左一10格 -->
					<div class="ten wide column"> <!-- style="background-color: #E3DBBF;" -->
						<div id="pie" class="pen">
							</br>
							<div class="ttable">设备状态饼状图</div>
							<div class="chartdiv-container pencenter">
<%--								<div class="chartdiv-balloon"></div>--%>
								<div id="chartdiv"></div>
							</div>
						</div>
					</div>
					<!-- 右一6格 -->
					<div class="six wide column">  <!-- style="background-color: #03E9F4;" -->
						<div id="battery" class="battery">
							</br>
							<div class="ttable">小车电量</div>
							<div class="batterypower center">
								<div class="liquidpower"></div>
							</div>
						</div>
					</div>
					<!-- 左二13格 -->
					<div class="thirteen wide column"> <!-- style="background-color: #E3DBBF;" -->
						<div id="zhu" class="zhu">
							</br>
							<div id="chartdivzhu"></div>
						</div>
					</div>
					<!-- 右二3格 -->
					<div class="three wide column">
						<div class="three column row">
							<div class="column" @click="x1">
								<div id="x1" class="x1" style="text-align: center">
									<a href="" style="color: #FEF8DE; line-height: 81px;">功能1</a>
								</div>
							</div>
							</br>
							<div class="column">
								<div id="x2" class="x2" style="text-align: center">
									<a href="" style="color: #FEF8DE; line-height: 81px;">功能2</a>
								</div>
							</div>
							</br>
							<div class="column">
								<div id="x3" class="x3" style="text-align: center">
									<a href="" style="color: #FEF8DE; line-height: 81px;">功能3</a>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>

<%--		去除amcharts的图标链接--%>
		<script>
			let Logo = document.querySelectorAll("[aria-labelledby$=-title]");
			Logo.forEach((ele)=>{
				ele.style.visibility="hidden";
			})
		</script>
		
	</body>
</html>
