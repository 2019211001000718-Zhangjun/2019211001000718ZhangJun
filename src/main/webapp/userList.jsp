<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/4/11
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<%@ page import="java.sql.ResultSet"%>
<h1>User List</h1>
<table border=1>
    <tr>
        <td>ID</td><td>username</td><td>password</td><td>Email</td><td>Gender</td><td>BirthDate</td>
    </tr>
    <%
       ResultSet rs= (ResultSet) request.getAttribute("rsname");
       if(rs==null){
    %>
    <tr>
        <td>No Date!!!</td>
    </tr>
    <%}else {
        while (rs.next()) {
            out.println("<tr>");
            out.println("<td>" + rs.getInt("id") + "</td>");
            out.println("<td>" + rs.getString("username") + "</td>");
            out.println("<td>" + rs.getString("password") + "</td>");
            out.println("<td>" + rs.getString("email") + "</td>");
            out.println("<td>" + rs.getString("gender") + "</td>");
            out.println("<td>" + rs.getString("birthdate") + "</td>");
            out.println("</tr>");
        }
    }
    %>
</table>
<%@include file="footer.jsp"%>