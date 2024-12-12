<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/26/2024
  Time: 2:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>Ma</th>
        <th>TEN</th>
        <th>NGAY</th>
        <th>TRANG THAI</th>
        <th>ACTION</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="p" items="${list}">
        <tr>
            <td>${p.ma}</td>
            <td>${p.ten}</td>
            <td>${p.ngayTao}</td>
            <td>${p.trangThai}</td>
            <td>
                <a href="/dat-phong/view-update?id=${p.id}">Detail</a>
                <a href="/dat-phong/delete?id=${p.id}">Delete</a>
            </td>
        </tr>

    </c:forEach>
    </tbody>
</table>
<script>

</script>
</body>
</html>
