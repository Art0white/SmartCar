<%--
  Created by IntelliJ IDEA.
  User: Pandoras Box
  Date: 2022/1/26
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <script type="text/javascript" src="http://static.robotwebtools.org/EventEmitter2/current/eventemitter2.min.js"></script>
    <script type="text/javascript" src="http://static.robotwebtools.org/roslibjs/current/roslib.min.js"></script>
    <script type="text/javascript">
        // Connecting to ROS
        var ros = new ROSLIB.Ros({
            url : 'ws://localhost:9090'
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
        // Publishing a Topic
        var cmdVel = new ROSLIB.Topic({
            ros : ros,
            name : '/cmd_vel',
            messageType : 'geometry_msgs/Twist'
        });//创建一个topic,它的名字是'/cmd_vel',,消息类型是'geometry_msgs/Twist'
        var twist = new ROSLIB.Message({
            linear : {
                x : 0.1,
                y : 0.2,
                z : 0.3
            },
            angular : {
                x : -0.1,
                y : -0.2,
                z : -0.3
            }
        });//创建一个message
        function func()//在点击”Publish”按钮后发布消息，并对消息进行更改
        {
            cmdVel.publish(twist);//发布twist消息
            twist.linear.x = twist.linear.x + 0.1;
            twist.linear.y = twist.linear.y + 0.1;
            twist.linear.z = twist.linear.z + 0.1;
            twist.angular.x = twist.angular.x + 0.1;
            twist.angular.y = twist.angular.y + 0.1;
            twist.angular.z = twist.angular.z + 0.1;
        }
        // Subscribing to a Topic
        var listener = new ROSLIB.Topic({
            ros : ros,
            name : '/chatter',
            messageType : 'std_msgs/String'
        });//创建一个topic,它的名字是'/chatter',,消息类型是'std_msgs/String'
        function subscribe()//在点击”Subscribe”按钮后订阅'/chatter'的消息，并将其显示到网页中
        {
            listener.subscribe(function(message) {
                document.getElementById("output").innerHTML = ('Received message on ' + listener.name + ': ' + message.data);
            });
        }
        function unsubscribe()//在点击”Unsubscribe”按钮后取消订阅'/chatter'的消息
        {
            listener.unsubscribe();
        }
    </script>
</head>
<body>
<h1>Simple roslib Example</h1>
<p>Check your Web Console for output.</p>
<p id = "output"></p>
<button onclick = "func()">Publish</button>
<button onclick = "subscribe()">Subscribe</button>
<button onclick = "unsubscribe()">Unsubscribe</button><br />
</body>
</html>