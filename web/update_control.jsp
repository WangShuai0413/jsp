<%@ page import="com.ws.util.DBUtil" %>
<%@ page import="com.ws.bean.Emp" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: wangshuai
  Date: 2018/4/20
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
</head>
<body>
    <%
        Map<String, Emp> map = DBUtil.map;
        Emp emp = map.get(request.getParameter("account"));
        emp.setName(request.getParameter("name"));
        emp.setEmail(request.getParameter("email"));

    %>
</body>
</html>
