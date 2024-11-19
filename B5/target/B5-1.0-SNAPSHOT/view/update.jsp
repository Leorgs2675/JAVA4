<%@ page import="entity.MayTinh" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/10/2024
  Time: 9:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    MayTinh mt = (MayTinh) request.getAttribute("mt");
    String selectedHang = "ASUS";
    if (mt != null) {
        selectedHang = mt.getHang();
    }
    String selectedMau = "Đen";
    if (mt != null) {
        selectedMau = mt.getMauSac();
    }
%>
<form action="/may-tinh/hien-thi" method="post">
    <div class="form-container">
        <input type="hidden" name="ma" value="${mt.ma}">
        <label for="name">Tên:</label>
        <input type="text" id="name" name="ten" value="${mt.ten}">

        <label for="price">Giá:</label>
        <input type="number" id="price" name="gia" value="${mt.gia}">

        <label for="memory">Bộ nhớ:</label>
        <input type="text" id="memory" name="boNho" value="${mt.boNho}">

        <label for="color">Màu sắc:</label>
        <select id="color" name="mauSac">
            <option value="Đen" <%= selectedMau.equalsIgnoreCase("Đen") ? "selected" : ""%>>Đen</option>
            <option value="Bạc" <%= selectedMau.equalsIgnoreCase("Bạc") ? "selected" : ""%>>Bạc</option>
        </select>

        <label for="brand">Hãng:</label>
        <select id="brand" name="hang">
            <option value="MSI" <%= selectedHang.equalsIgnoreCase("MSI") ? "selected" : ""%>>MSI</option>
            <option value="ASUS" <%= selectedHang.equalsIgnoreCase("ASUS") ? "selected" : ""%>>ASUS</option>
        </select>
        <label for="mieuTa">Mieu Ta:</label>
        <input type="text" id="mieuTa" name="mieuTa" value="${mt.mieuTa}">
        <button type="submit" name="action" value="update">UPDATE</button>
    </div>
</form>
</body>
</html>
