<%--
  Created by IntelliJ IDEA.
  User: mono
  Date: 5/27/21
  Time: 3:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    if(request.getParameter("username") != null && request.getParameter("password") != null){
        if(request.getParameter("username").equals("admin") && request.getParameter("password").equals("password")){
            response.sendRedirect("/profile.jsp");
        }
    }
%>
<html>
<head>
    <title>Login</title>
    <%@include file="partials/head.jsp"%>

</head>
<body >


<%@include file="partials/navbar.jsp"%>
<main class="card w-25 mx-auto mt-5 py-5">
    <form action="login.jsp" method="post">
        <div class="form-group">
            <label for="username">Username: </label>
            <input class="form-control" id="username" type="text" name="username" placeholder="Username">
        </div>

        <div class="form-group">
            <label for="password">Password: </label>
            <input class="form-control" id="password" type="password" name="password" placeholder="Password">
        </div>

        <button class="btn btn-outline-secondary">Submit</button>
    </form>
</main>



</body>
</html>