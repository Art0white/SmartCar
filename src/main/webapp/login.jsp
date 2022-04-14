<%--
  Created by IntelliJ IDEA.
  User: Pandoras Box
  Date: 2021/11/10
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <meta charset="utf-8">
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
                <%--回车登录--%>
                <script type="text/javascript">
                    //回车登陆
                    function KeyDown() {
                        if (event.keyCode == 13) {
                            console.log(event.keyCode);
                            document.getElementById("subbutton").click();  //类选择器选择按钮
                        }
                    }
                </script>
            </div>
        </form>
    </div>
</body>
</html>
