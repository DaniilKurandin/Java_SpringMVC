<%--
  Created by IntelliJ IDEA.
  User: kuran
  Date: 08.07.2021
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Create employee</h1>
<form action="/form" method="post" modelAttribute="${employee}">
    <p>Name: <input type="text" name="name"></p>
    <p>Last name: <input type="text" name="lastname"></p>
    <input type="submit" value="Pass data">
</form>

<form action="/all" method="get" modelAttribute="${employee}">
    <input type="submit" value="All Employee">
</form>
</body>
</html>
