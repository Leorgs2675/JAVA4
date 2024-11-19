<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/31/2024
  Time: 4:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/category/search" method="get">
    <input type="text" placeholder="nhap ma can tim" name="timMa">
    <input type="submit" value="Search">
</form>
<br>
<button><a href="/view/create.jsp">Them</a></button>
<table>
    <thead>
    <tr>
        <th>STT</th>
        <th>ID</th>
        <th>CATENAME</th>
        <th>CATECODE</th>
        <th>ACTION</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach var="c" items="${list}">
            <tr>
                <td>${c.cateID}</td>
                <td>${c.cateName}</td>
                <td>${c.cateCode}</td>
                <td>
                    <a href="/category/detail?cateID=${c.cateID}">DETAIL</a>
                    <a href="/category/delete?cateID=${c.cateID}">DELETE</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
