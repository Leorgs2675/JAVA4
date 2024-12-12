<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/11/2024
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>${erro}</h1>
<form action="/login" method="post">
    UserName: <input type="text" name="u1">
    <br>
    Password: <input type="password" name="p1">
    <br>
    <button type="submit">Login</button>
</form>
</body>
</html>
