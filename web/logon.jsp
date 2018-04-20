<%--
  Created by IntelliJ IDEA.
  User: wangshuai
  Date: 2018/4/20
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>人事管理系统</title>
    <meta charset="UTF-8"/>
</head>
<body>
<h3 align="center">人事管理系统登陆页面</h3>
<hr/>
<form action="control.jsp" method="post">
    <table align="center">
        <tr>
            <td>账号：</td>
            <td><input type="text" name="account"></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="登陆"></td>
        </tr>
    </table>
</form>
</body>
</html>
