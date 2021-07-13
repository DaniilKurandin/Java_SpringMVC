<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--
  Created by IntelliJ IDEA.
  User: kuran
  Date: 08.07.2021
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Operation was successful</h1>
<c:forEach items="${lsit}" var="employee" varStatus="status">
    <c:out value="${status.index}"/>
</c:forEach>
<br>
<h2>Number of records: ${size}</h2>
<a href="/form">form</a>
</body>
</html>
