<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/8/2024
  Time: 9:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/giang-vien/hien-thi" method="post">
    <input type="text" name="gvID" value="${gv.gvID}">
    <input type="text" name="gvMa" value="${gv.gvMa}">
    <input type="text" name="gvTen" value="${gv.gvTen}">
    <input type="text" name="gvTuoi" value="${gv.gvTuoi}">
    <label>Gioi Tinh: </label>
    <input type="radio" name="gvGioiTinh" value="1"
           <c:if test="${gv.gvGioiTinh == true}">checked</c:if> required> Nam
    <input type="radio" name="gvGioiTinh" value="0"
           <c:if test="${gv.gvGioiTinh == false}">checked</c:if> required> Nu<br>
    <input type="text" name="gvDiaChi" value="${gv.gvDiaChi}">
    <button type="submit" name="action" value="update">Update</button>
</form>
</body>
</html>
