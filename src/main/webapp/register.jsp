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
<form method="post" action="register">
    Name<input type="text" name="Name" required><br/>
    Password<input type="password" name="Password" required minlength="8"><be/>
    Email<input type="email" name="Email"><br/>
    BirthDay<input type="date" name="BirthDay" dataformatas="yyyy-dd-mm"><br/>
    Gender<input  type="radio" name="Gender" value="male">male
    <input  type="radio" name="Gender" value="female">female<br/>
    <input type="submit" value="register">
</form>

</body>
</html>
