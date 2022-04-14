
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
<%--		适配手机--%>
<%--		<meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
		<title>小车界面</title>



		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/car.css">
		<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/vue"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/ros3d.js"></script>
		<script type="text/javascript" src="http://static.robotwebtools.org/EventEmitter2/current/eventemitter2.min.js"></script>
		<script type="text/javascript" src="http://static.robotwebtools.org/roslibjs/current/roslib.min.js"></script>
		<script type="text/javascript" href="${pageContext.request.contextPath}/js/car.js"></script>
		<script type="text/javascript" > // defer = "defer"延迟加载
			window.onload = function() {
				document.getElementById("speeddata").innerHTML = `<h3>Ankaa</h3> <p>i.MX6 - x11</p> <h3>Linux</h3> <p>OS</p>`;
			};


			// Connecting to ROS
			var ros = new ROSLIB.Ros({
				url : 'ws://10.100.68.57:9090'
			});

			//判断是否连接成功并输出相应的提示消息到web控制台
			ros.on('connection', function() {
				console.log('Connected to websocket server.');
			});

			ros.on('error', function(error) {
				console.log('Error connecting to websocket server: ', error);
			});

			ros.on('close', function() {
				console.log('Connection to websocket server closed.');
			});

			// 对设备状态做请求
			// 0 :OK
			// 1 :Error
			// 2 :Unknow
			var resp = new ROSLIB.Service({
				ros : ros,
				name : '/checkResult_server',
				messageType : 'check_points/result'
			});
			var request = new ROSLIB.ServiceRequest({
				device_num : 0
			});

			resp.callService(request, function(result) {
				console.log(result.statust)
			});




			// 右边的地图
			// Create the main viewer.
			var viewer = new ROS3D.Viewer({
				divID : 'map',
				width : 1500,
				height : 500,
				antialias : true,
				// cameraPosition : {
				//     x : OdomTfClient.x,
				//     y : OdomTfClient.y,
				//     z : OdomTfClient.z,
				// }
			});

			// Setup the marker client.
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

			var LdTfClient = new ROSLIB.TFClient({
				ros : ros,
				angularThres : 0.01,
				transThres : 0.01,
				rate : 10.0,
				fixedFrame : '/hokuyo_link'
			});

			var urdf = new ROS3D.UrdfClient({
				ros : ros,
				tfClient : OdomTfClient,
				path : 'http://resources.robotwebtools.org/',
				rootObject : viewer.scene,
				loader : ROS3D.COLLADA_LOADER_2
			})

			var scanClient = new ROS3D.LaserScan({
				ros: ros,
				topic: '/scan',
				tfClient: OdomTfClient,
				rootObject: viewer.scene,
				material: { size: 0.3, color: 0xff00ff }
			});







			// Publishing a Topic
			var cmdVel = new ROSLIB.Topic({
				ros : ros,
				name : '/cmd_vel',
				messageType : 'geometry_msgs/Twist'
			});//创建一个topic,它的名字是'/cmd_vel',,消息类型是'geometry_msgs/Twist'

			var twist = new ROSLIB.Message({
				linear : {
					x : 0.0,
					y : 0.0,
					z : 0.0
				},
				angular : {
					x : 0.0,
					y : 0.0,
					z : 0.0
				}
			});//创建一个message

			document.onkeydown = function(e) {    //对整个页面监听
				var keyNum = window.event ? e.keyCode : e.which;       //获取被按下的键值
				switch(keyNum) {
					case 87:
						console.log('您按下了W');
						func1();
						return;

					case 83:
						console.log('您按下了S');
						func2();
						return;

					case 65:
						console.log('您按下了A');
						func3();
						return;

					case 68:
						console.log('您按下了D');
						func4();
						return;
				}
			}

			document.onkeyup = function(e) {    //对整个页面监听
				var keyNum = window.event ? e.keyCode : e.which;       //获取被按下的键值
				switch(e.keyCode) {
					case 87:
						console.log('您弹起了W');
						stop();
						return;

					case 83:
						console.log('您弹起了S');
						stop();
						return;

					case 65:
						console.log('您弹起了A');
						stop();
						return;

					case 68:
						console.log('您弹起了D');
						stop();
						return;
				}
			}

			//初速度
			var sd = 0.15;
			//加速
			function add() {
				console.log("加速");
				sd += (sd * 0.1);
				if(sd >= 0.23) {
					sd = 0.23;
				}
			}

			//减速
			function del() {
				console.log("减速");
				sd -= (sd * 0.1);
			}

			//前
			function func1()
			{
				twist.linear.x = parseFloat(sd);
				cmdVel.publish(twist);//发布twist消息
				console.log(twist);
			}
			//后
			function func2() {
				twist.linear.x = -parseFloat(sd);
				cmdVel.publish(twist);//发布twist消息
				console.log(twist);
			}

			function func3() {
				twist.angular.z = 0.35;
				cmdVel.publish(twist);//发布twist消息
				console.log(twist);
			}

			function func4() {
				twist.angular.z = -0.35;
				cmdVel.publish(twist);//发布twist消息
				console.log(twist);
			}

			function stop() {
				twist.linear.x = 0;
				twist.angular.z = 0;
				cmdVel.publish(twist);//发布twist消息
			}


			// Subscribing to a Topic
			var listener = new ROSLIB.Topic({
				ros : ros,
				name : '/map',
				messageType : 'nav_msgs/OccupancyGrid'
			});//创建一个topic,它的名字是'/map',,消息类型是'nav_msgs/OccupancyGrid'

			function subscribe()//在点击”Subscribe”按钮后订阅'/map'的消息，并将其显示到网页中
			{
				listener.subscribe(function(message) {
					
					var msg = message.data;
					document.getElementById("output").innerHTML = (`<img src="` + message.data +`" alt=""/>`);
				});
			}

			function unsubscribe()//在点击”Unsubscribe”按钮后取消订阅'/chatter'的消息
			{
				listener.unsubscribe();
			}


		</script>
	</head>
	<body>
		<!-- 导航 -->
		<nav class="ui inverted attached segment m-padded-tb-mini ">
			<div class="ui container">
				<div class="ui inverted seconfary menu">
					<h2 class="ui teal header item">矿洞实时检测</h2>
					<a href="${pageContext.request.contextPath}/home" class="item"><i class="home icon"></i>主页</a>
					<a href="" class="item"><i class="idea icon"></i>小车</a>
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

		<div class="m-container m-padded-tb-large">
			<div class="ui container">
				<div class="ui grid">
					<%--左七--%>
					<div class="seven wide column">
						<div class="two column row">
							<%--左七上--%>
							<div class="column">
								<div id="carvideo" class="carvideo">
									<img src="http://10.100.68.57:5000/stream?topic=/rrbot/camera1/image_raw" alt="" style="width:auto; height:auto; max-width:100%; max-height:100%;">
								</div>
							</div>
							<%--左七下--%>
							<div class="column leftdown">
								<div class="directional-buttons" style="margin-top: 20px">
									<button class="direction-button up" onclick = "func1()">
										<span class="visually-hidden">up</span>
									</button>
									<button class="direction-button left" onclick = "func3()">
										<span class="visually-hidden">left</span>
									</button>
									<button class="direction-button right" onclick = "func4()">
										<span class="visually-hidden">right</span>
									</button>
									<button class="direction-button down" onclick = "func2()">
										<span class="visually-hidden">down</span>
									</button>
								</div>
								<button onclick = "add()" class="downADDDEL" style="top: 2px; right: 2px; position: absolute;">加速</button>
								<button onclick = "del()" class="downADDDEL" style="bottom: 2px; right: 2px; position:absolute;">减速</button>
							</div>
						</div>
					</div>

					<%--右九--%>
					<div class="nine wide column">  <!-- style="background-color: #03E9F4;" -->
						<div class="two column row">
							<%--右九上--%>
							<div class="column">
								<div id="carmapvideo" class="carmapvideo">
									<div id="map"></div>
								</div>
							</div>
							<%--右九下--%>
							<div class="column" >
								<div style="width: 100%; height: 100%; margin-top: 20px; background-color: #57ce79; display: flex; border-radius: 15px;">

									<div class="" style="background-color: #51bf70; width: 25%; height: 224px; left: 0; border-radius: 15px 0 0 15px;">
										<i class="material-icons medium valign">cloud_download</i>
									</div>

									<div class="" style="width: 60%; height: 224px; padding-left: 20px; border-radius: 0 15px 15px 0;">
										<div id="speeddata" style="margin-top: 30px">
											<%--动态填充数据--%>
										</div>
									</div>

								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>



	</body>
</html>
