<%--
  Created by IntelliJ IDEA.
  User: wangshuai
  Date: 2018/4/20
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
    <!--
        pageContext的作用：
        1.forward方法完成请求转发
        2.include方法完成jsp页面包含关系
        3.获取其他内置对象
    -->
    <%
//        pageContext.include("header.jsp");
        pageContext.forward("result.jsp?name=wshuai");
    %>
</body>
</html>
