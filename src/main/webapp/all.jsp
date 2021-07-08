<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: kuran
  Date: 08.07.2021
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List of employees: </h1>
<c:forEach items="${list}" var="employee" varStatus="status">
    <h2>${status.index} ${employee.name} ${employee.lastname}</h2>
</c:forEach>
</body>
</html>
