<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/1/2024
  Time: 5:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/gvHien-thi" method="post">
    <input type="hidden" name="idGV" value="${g.idGV}">
    <input type="text" name="maGV" value="${g.maGV}" placeholder="magv">
    <input type="text" name="tenGV" value="${g.tenGV}" placeholder="ten" >
    <input type="text" name="tuoi" value="${g.tuoi}" placeholder="tuoi">
    <label>Gioi Tinh: </label>
    <input type="radio" name="gioiTinh" value="1"
           <c:if test="${g.gioiTinh == true}">checked</c:if> required> Nam
    <input type="radio" name="gioiTinh" value="0"
           <c:if test="${g.gioiTinh == false}">checked</c:if> required> Nu<br>
    <input type="text" name="que" value="${g.que}">
    <button name="action" type="submit" value="update">Update</button>
</form>
</body>
</html>
