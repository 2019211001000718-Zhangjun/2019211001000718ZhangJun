<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<b>Login</b><br>
<%
    if(!((request.getAttribute("message"))==null)){
        out.println(request.getAttribute("message"));
    }
%>
<%
    Cookie[] allCookies=request.getCookies();
    String username="",password="",rememberMeval="";
    if (allCookies!=null){
        for (Cookie c:allCookies) {
            if (c.getName().equals("cUsername")){
                username=c.getValue();
            }
            if (c.getName().equals("cPassword")){
                password=c.getValue();
            }
            if (c.getName().equals("cRememberMe")){
                rememberMeval=c.getValue();
            }
        }
    }
%>
<form method="post" action="login">
    Username: <input type="text" name="username" value="<%=username%>"><br/>
    Password: <input type="password" name="password" value="<%=password%>"><br/>
    <input type="checkbox" name="rememberMe" value="1" <%=rememberMeval.equals("1") ?"checked":""%>checked/>RememberMe<br/>
    <input type="submit" value="Submit"/>
</form>
<%@include file="footer.jsp"%>