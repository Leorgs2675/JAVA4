<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/8/2024
  Time: 8:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/giang-vien/search" method="get">
    <input type="text" placeholder="Nhap ten can tim" name="timTen">
    <button type="submit">Search</button>
</form>
<a href="/view/create.jsp">ADD</a>
<a href="/giang-vien/giang-vien-nu" name="timGVNu" value="false" >Giang Vien Nu</a>
<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>MA</th>
            <th>TEN</th>
            <th>TUOI</th>
            <th>GIOI TINH</th>
            <th>DIA CHI</th>
            <th>ACTION</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="g">
        <tr>
            <td>${g.gvID}</td>
            <td>${g.gvMa}</td>
            <td>${g.gvTen}</td>
            <td>${g.gvTuoi}</td>
            <td>${g.gvGioiTinh ? "Nam":"Nu"}</td>
            <td>${g.gvDiaChi}</td>
            <td>
                <a href="/giang-vien/detail?gvID=${g.gvID}">DETAIL</a>
                <a href="/giang-vien/view-update?gvID=${g.gvID}">UPDATE</a>
                <a href="/giang-vien/remove?gvID=${g.gvID}">DELETE</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
