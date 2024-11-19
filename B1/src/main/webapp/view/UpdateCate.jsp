<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/1/2024
  Time: 9:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/category/hien-thi" method="post">

<input type="number" name="cateID" value="${ci.cateID}">
<input type="text" placeholder="Nhap ma" name="cateCode" value="${ci.cateCode}">
<input type="text" placeholder="Nhap ten" name="cateName" value="${ci.cateName}">
<button name="action" type="submit" value="update">UPDATE</button>
</form>
</body>
</html>
