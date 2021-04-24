<%@ page import="com.example.model.User" %>
<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/4/24
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1> User Update</h1>
<%
    User u=(User) session.getAttribute("user");

%>
<form method="post" action="updateUser">
    <input type="hidden" name="id" value="<%=u.getId()%>">
    Username : <input type="text" name="username" value="<%=u.getUsername()%>"/><br/>
    Password : <input type="password" name="password" value="<%=u.getPassword()%>"/><br/>
    Email : <input type="email" name="email" value="<%=u.getEmail()%>"/><br/>
    Gender: <input type="radio" name="gender" value="male" <%= "male".equals(u.getGender())?"checked" :""%>>Male
    <input type="radio" name="gender" value="female" <%= "female".equals(u.getGender())?"checked" :""%>>Female<br/>
    Date of Birth : <input type="text name=" name="birthdate" value="<%=u.getBirthdate()%>"><br/>
    <input type="submit" value="Save Changes"/><br/>
</form>
<%@include file="footer.jsp"%>