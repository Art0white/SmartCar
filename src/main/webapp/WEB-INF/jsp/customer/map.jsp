<%--
  Created by IntelliJ IDEA.
  User: Pandoras Box
  Date: 2022/4/14
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>lib_robot</title>
    <script type="text/javascript" src="https://static.robotwebtools.org/roslibjs/current/roslib.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/vue"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/ros3d.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/roslib.min.js"></script>
</head>
<script>


    function init() {
        var ros = new ROSLIB.Ros({
            url : 'ws://10.100.71.139:9090'
        });

        var resp = new ROSLIB.Service({
            ros : ros,
            name : '/checkResult_server',
            messageType : 'check_points/result'
        });
        var request = new ROSLIB.ServiceRequest({
            device_num : 0
        });

        resp.callService(request, function(result) {
            console.log(result.status)
        });

        // 0 :OK
        // 1 :Error
        // 2 :Unknow


        // Create the main viewer.
        var viewer = new ROS3D.Viewer({
            divID : 'map',
            width : 500,
            height : 300,
            antialias : true,
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
    }
</script>

<body onload="init()" >
<div id="app" class="container">
    <div class="jumbotron">
        <h1>小车测试</h1>
    </div>
    <hr>

    <div class="row">
        <div class="col-md-12 text-center">
            <h5>构建地图</h5>
        </div>
    </div>
    <div id="map"></div>
</div>
</body>

</html>

