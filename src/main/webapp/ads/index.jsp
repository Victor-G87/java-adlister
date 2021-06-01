<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mono
  Date: 6/1/21
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Ads List" />
    </jsp:include>
</head>
<body>
<jsp:include page="/partials/navbar.jsp" />

<div class="container">
    <h3>ADS LIST</h3>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-12">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
