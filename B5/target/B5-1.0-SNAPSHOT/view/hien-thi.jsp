<%@ page import="entity.MayTinh" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/10/2024
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <button type="submit" name="action" value="add">Add</button>
</div>
</form>
<table>
    <thead>
    <tr>
        <th>Mã</th>
        <th>Tên</th>
        <th>Giá</th>
        <th>Bộ nhớ</th>
        <th>Màu sắc</th>
        <th>Hãng</th>
        <th>Miêu tả</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="m" items="${list}">
    <tr>
        <td>${m.ma}</td>
        <td>${m.ten}</td>
        <td>${m.gia}</td>
        <td>${m.boNho}</td>
        <td>${m.mauSac}</td>
        <td>${m.hang}</td>
        <td>${m.mieuTa}</td>
        <td>
            <a href="/may-tinh/detail?ma=${m.ma}">DETAIL</a>
            <a href="/may-tinh/view-update?ma=${m.ma}">UPDATE</a>
            <a href="/may-tinh/delete?ma=${m.ma}">DELETE</a>
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
