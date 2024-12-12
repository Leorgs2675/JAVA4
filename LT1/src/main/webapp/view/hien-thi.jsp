<%@ page import="entity.SanPham" %>
<%@ page import="java.util.List" %>
<%@ page import="repository.SanPhamRepository" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/8/2024
  Time: 8:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/san-pham/hien-thi" method="post">
    <input type="hidden" name="id" value="${s.id}"><br>
    Ma<input type="text" name="ma" value="${s.ma}"><br>
    Ten<input type="text" name="ten" value="${s.ten}"><br>
    <input type="submit" value="add" name="action">
</form>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>MA</th>
        <th>TEN</th>
        <th>MA LOAI SP</th>
        <th>TEN LOAI SP</th>
        <th>ACTION</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="s">
        <tr>
            <td>${s.id}</td>
            <td>${s.ma}</td>
            <td>${s.ten}</td>
            <td>${s.idLoaiSp.ma}</td>
            <td>${s.idLoaiSp.ten}</td>
            <td>
                <a href="/san-pham/detail?id=${s.id}">Detail</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<c:if test="${pageNo > 0}">
    <a href="/san-pham/hien-thi?pageNo=${pageNo-1}">Trang Truoc</a>
</c:if>
<c:forEach var="i" begin="1" end="${tongPage -1}">
    <a href="/san-pham/hien-thi?pageNo=${i}">${i}</a>
</c:forEach>
<c:if test="${pageNo < tongPage -1}">
    <a href="/san-pham/hien-thi?pageNo=${pageNo + 1}">Trang Sau</a>
</c:if>

</body>
</html>
