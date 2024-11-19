<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/8/2024
  Time: 9:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/giang-vien/hien-thi" method="post">
    <input type="text" name="gvMa" >
    <input type="text" name="gvTen" >
    <input type="text" name="gvTuoi" >
    <label>Giới Tính:</label>
    <input type="radio" id="gioiTinhNam" name="gvGioiTinh" value="1" checked>
    <label for="gioiTinhNam">Nam</label>

    <input type="radio" id="gioiTinhNu" name="gvGioiTinh" value="0">
    <label for="gioiTinhNu">Nữ</label>
    <input type="text" name="gvDiaChi" >
    <button type="submit" name="action" value="add">ADD</button>
</form>
</body>
</html>
