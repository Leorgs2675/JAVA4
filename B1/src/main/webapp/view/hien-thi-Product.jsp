<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/12/2024
  Time: 2:27 PM
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
        <th>ID</th>
        <th>CATEID</th>
        <th>CATECODE</th>
        <th>CATENAME</th>
        <th>PRODUCT CODE</th>
        <th>PRODUCT NAME</th>
        <th>PRICE</th>
        <th>DES</th>
        <th>ACTION</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="p" items="${listpr}">
        <tr>
            <td>${p.id}</td>
            <td>${p.cate.cateID}</td>
            <td>${p.cate.cateCode}</td>
            <td>${p.cate.cateName}</td>
            <td>${p.productCode}</td>
            <td>${p.productName}</td>
            <td>${p.price}</td>
            <td>${p.price}</td>
            <td>
                <a>DETAIL</a>
                <a>DETAIL</a>
                <a>DETAIL</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
