<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/3/14
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<b>This is register JSP page</b><br>
<form method="post" action="register">
    Username : <input type="text" name="username" required/><br/>
    Password : <input type="password" name="password" required minlength="8"/><br/>
    Email : <input type="email" name="email" required/><br/>
    Gender: <input type="radio" name="gender" value="male">Male<input type="radio" name="gender" value="female">Female<br/>
    Date of Birth : <input type="text name=" name="birthdate"><br/>
    <input type="submit" value="Register"/><br/>
</form>
<%@include file="footer.jsp"%>
