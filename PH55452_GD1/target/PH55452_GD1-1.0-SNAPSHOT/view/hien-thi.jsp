<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/16/2024
  Time: 2:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/may-tinh/search" method="get">
    <input type="number" placeholder="gia max" name="giaMax">
    <input type="number" placeholder="gia min" name="giaMin">
    <input type="submit" value="search">
</form>
<form action="/may-tinh/hien-thi" method="post">
    <input type="text" name="ma" required placeholder="Nhap ma">
    <input type="text" name="ten" required placeholder="Nhap ten">
    <input type="number" name="gia" required placeholder="Nhap gia">
    <input type="radio" name="boNho" value="256GB">256GB
    <input type="radio" name="boNho" value="512GB">512GB
    <input type="radio" name="boNho" value="1TB">1TB
    <select name="mauSac">
        <option value="Vang" >Vang</option>
        <option value="Trang">Trang</option>
        <option value="Den">Den</option>
    </select>
    <input type="submit" value="add" name="action">
</form>
<table>
    <thead>
    <tr>
        <th>MA</th>
        <th>TEN</th>
        <th>GIA</th>
        <th>BO NHO</th>
        <th>MAU SAC</th>
        <th>ACTION</th>
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
        <td>
            <a href="/may-tinh/remove?ma=${m.id}">DELETE</a>
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>

    <a href="/may-tinh/hien-thi?page=${pageNo +1}">Next</a>
    <a href="/may-tinh/hien-thi?page=${pageNo-1}">Pre</a>
<script>
    function check(){
        alert("khong bo trong");
    }

</script>
</body>
</html>
