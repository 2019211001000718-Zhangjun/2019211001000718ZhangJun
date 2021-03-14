<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/3/14
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    Name<input type="text" name="name" required><br/>
    Password<input type="password" name="password" required minlength="8"><be/>
    Email<input type="email" name="email"><br/>
    BirthDay<input type="date" name="birthday" dataformatas="yyyy-dd-mm"><br/>
    <input name="sex" type="radio" value="male">Male
    <input name="sex" type="radio" value="female">Female<br/>
    <input type="submit" value="register">
</body>
</html>
