<%@ page import="com.example.model.User" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/4/11
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>

<%--<%--%>
<%--    Cookie [] allCookies=request.getCookies();--%>
<%--    for(Cookie c:allCookies){--%>
<%--        out.println("<br/>"+c.getName()+" --- "+c.getValue());--%>
<%--    }--%>
<%--%>--%>
<%
   User u=(User) session.getAttribute("user");
%>
<h1> User Info</h1>
<table>
    <tr>
        <td>Username:</td><td><%=u.getUsername()%></td>
   </tr>
    <tr>
        <td>Password:</td><td><%=u.getPassword()%></td>
    </tr>
    <tr>
        <td>Email:</td><td><%=u.getEmail()%></td>
    </tr>
    <tr>
        <td>Gender:</td><td><%=u.getGender()%></td>
   </tr>
    <tr>
        <td>BirthDate:</td><td><%=u.getBirthdate()%></td>
    </tr>
</table>
<a href="updateUser">Update</a>
<%@include file="footer.jsp"%>
