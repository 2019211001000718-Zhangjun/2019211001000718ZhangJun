<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/3/14
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<b>This is MyJsp page</b><br>
<a href="index.jsp">go to ecjtu</a>
<form method="post">
    Name : <input type="text" name="name"><br/>
    ID   : <input type="text" name="id"><br/>
    <input type="submit" value="send data to servlet"/>
</form>
<%@include file="footer.jsp"%>