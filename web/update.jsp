<%--
  Created by IntelliJ IDEA.
  User: wangshuai
  Date: 2018/4/20
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工更新页面</title>
    <meta charset="UTF-8">
</head>
<body>
    <h3 align="right">登陆用户：<%=session.getAttribute("account")%></h3>
    <h3 align="center">员工更新界面</h3>
    <hr/>
    <form action="update_control.jsp" method="post">
        <table align="center" border="1" width="500">
            <tr>
                <td>账号：</td>
                <td><input type="text" name="account" value="<%=request.getParameter("account")%>"></td>
            </tr>
            <tr>
                <td>姓名：</td>
                <td><input type="text" name="name" value="<%=request.getParameter("name")%>"></td>
            </tr>
            <tr>
                <td>邮箱：</td>
                <td><input type="text" name="email" value="<%=request.getParameter("email")%>"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="修改">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
