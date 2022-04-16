<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%--		适配手机--%>
<%--		<meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
		<%--清理缓存--%>
		<meta HTTP-EQUIV="pragma" CONTENT="no-cache"> <meta HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate"> <meta HTTP-EQUIV="expires" CONTENT="0">
		<title>矿洞界面</title>

		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mine.css">
<%--		<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>--%>
		<script type="text/javascript" src="${pageContext.request.contextPath}/vendors/jquery-1.12/package/dist/jquery.min.js"></script>
		<script type="text/javascript" src="http://static.robotwebtools.org/EventEmitter2/current/eventemitter2.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/roslib.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/ros3d.js"></script>

	</head>

	<body>
		<!-- 导航 -->
		<nav class="ui inverted attached segment m-padded-tb-mini ">
			<div class="ui container">
				<div class="ui inverted seconfary menu">
					<h2 class="ui teal header item">矿洞实时检测</h2>
					<a href="${pageContext.request.contextPath}/home" class="item"><i class="home icon"></i>主页</a>
					<a href="${pageContext.request.contextPath}/car" class="item"><i class="idea icon"></i>小车</a>
					<a href="" class="item"><i class="tags icon"></i>矿洞</a>
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

		<div class="m-container m-padded-tb-large">
			<div class="ui container">
				<div class="ui grid">
					<%--左十--%>
					<div class="eleven wide column">
						<div class="two column row">
							<%--左十上--%>
							<div class="column">
								<div id="ourmap" class="ourmap">
									<div id = "kmap"></div>
								</div>
							</div>
							<%--左十下--%>
							<div class="column">
								<div id="smodule" class="smodule">
									<button onclick="zdxj()">自动巡检</button>
									<input type="text" id="numValue"/>
									<input type="text" id="xyzStr"/>
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

	<script type="text/javascript">
		var ros = new ROSLIB.Ros({
			url : 'ws://10.100.71.139:9090'
		});

		var viewer = new ROS3D.Viewer({
			divID : 'kmap',
			width : 684.25,
			height : 380,
			antialias : true
		});

		var gridClient = new ROS3D.OccupancyGridClient({
			ros : ros,
			rootObject : viewer.scene,
			continuous: true
		});

		var OdomTfClient = new ROSLIB.TFClient({
			ros : ros,
			angularThres : 0.01,
			transThres : 0.01,
			rate : 10.0,
			fixedFrame : '/odom'
		});

		//路径
		var printL1 = new ROS3D.Path({
			ros: ros,
			topic: '/move_base/GlobalPlanner/plan',
			tfClient: OdomTfClient,
			rootObject: viewer.scene,
			color : 0xd44f4a
		});

		//箭头
		var printL2 = new ROS3D.PoseArray({
			ros: ros,
			topic: '/move_base/TebLocalPlannerROS/teb_poses',
			tfClient: OdomTfClient,
			rootObject: viewer.scene,
			length : 0.5,
			color : 0x29cf37
		});

		//小车位置
		var scanClient = new ROS3D.PoseArray({
			ros: ros,
			topic: '/particlecloud',
			tfClient: OdomTfClient,
			rootObject: viewer.scene,
			length : 0.1,
			color : 0x0014cc
		});

		function zdxj() {
			var numValue = document.getElementById("numValue").value;
			var xyzStr = document.getElementById("xyzStr").value;


			var autoRun = new ROSLIB.Topic({
				ros : ros,
				name : 'mission_signal',
				messageType : 'check_points/checkpoint_msgs'
			});
			let numTo = numValue;


			var xyz = new ROSLIB.Message({
				numOfCheckpoint : parseInt(numValue),
				dataOfCheckpoint : [xyzStr]
			});
			autoRun.publish(xyz);
			console.log("执行成功")
		}
	</script>
</html>
