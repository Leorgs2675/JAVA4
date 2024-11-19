<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/14/2024
  Time: 3:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/sach/hien-thi" method="post">
    <label for="maSach">Book ID (MaSach):</label><br>
    <input type="text" id="idSach" name="id" value="${s.id}" required><br><br>
    <label for="maSach">MaSach:</label><br>
    <input type="text" id="maSach" name="maSach" value="${s.maSach}" required><br><br>

    <label for="tenSach">Book Name (TenSach):</label><br>
    <input type="text" id="tenSach" name="tenSach" value="${s.tenSach}" required><br><br>

    <!-- Year of Publication -->
    <label for="namXuatBan">Year of Publication (NamXuatBan):</label><br>
    <input type="number" id="namXuatBan" name="nam" value="${s.nam}" min="1800" max="2024" required><br><br>

    <!-- Genre -->
    <label for="theLoai">Genre (TheLoai):</label><br>
    <input type="text" id="theLoai" name="theLoai" value="${s.theLoai}" required><br><br>

    <!-- Author ID -->
    <label for="tacGiaID">Author ID (TacGiaID):</label><br>
    <input type="number" id="tacGiaID" name="tgId" value="${s.tgId}" required><br><br>

    <!-- Submit Button -->
    <input type="submit" value="update" name="action">
</form>
</body>
</html>
