<%--
  Created by IntelliJ IDEA.
  User: wangshuai
  Date: 2018/4/20
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.ws.bean.*,com.ws.util.DBUtil" %>
<%@ page import="java.util.Map" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
</head>
<body>
    <!-- 获取账号密码并且调用DBUtil中的方法判断账号密码是否正确 -->
    <%--<h3><%=response.getCharacterEncoding()%></h3>--%>
    <%
        String account = request.getParameter("account");
        String password = request.getParameter("password");
//        out.println("账号"+account+"，密码："+password);
        Emp emp = new Emp(account, null, password, null);
        boolean flag = DBUtil.selectEmpByAccountAndPassword(emp);
        Map<String, Emp> map = DBUtil.map;
        if (flag == true){
            session.setAttribute("account", account);
    %>
            <h3 align="right">登陆账户:<%=session.getAttribute("account")%></h3>
            <h3 align="center">欢迎来到人事管理首页</h3>
            <hr/>
            <table align="center" border="1" width="500px">
                <tr>
                    <td>账号</td>
                    <td>姓名</td>
                    <td>邮箱</td>
                    <td>修改</td>
                </tr>
            <%
                for (String key : map.keySet()){
                    Emp e = map.get(key);
                    %>
                        <tr>
                            <td><%=e.getAccount()%></td>
                            <td><%=e.getName()%></td>
                            <td><%=e.getEmail()%></td>
                            <td>
                                <a href="update.jsp?account=<%=e.getAccount()%>&name=<%=e.getName()%>&email=<%=e.getEmail()%>">修改</a>
                            </td>
                        </tr>
                    <%
                }
            %>
            </table>
    <%
        }else {
            out.println("账号和密码错误！");
        }
    %>
</body>
</html>
