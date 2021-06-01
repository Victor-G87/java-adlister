<%--
  Created by IntelliJ IDEA.
  User: mono
  Date: 6/1/21
  Time: 3:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pickcolor</title>
    <jsp:include page="partials/navbar.jsp" />
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
COLOR PICKER

<input type="text" id="colorInputText">

<input type="button" id="colorButton" value="Click to Change Color"
onclick="changeColor()">

<script>
    function changeColor() {
       let color = document.getElementById('colorInputText').value;
       document.body.style.backgroundColor = color;
    }

</script>



</body>
</html>
