<%@ page import="entity.TacGia" %>
<%@ page import="repository.SachRepository" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/14/2024
  Time: 2:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    SachRepository reposi = new SachRepository();
    List<TacGia> listCB = new ArrayList<>();
    List<TacGia> get = reposi.getCB();
    try {
        listCB.addAll(get);
    }catch (Exception e){

    }

%>
<form action="/sach/search" method="get">
    <input type="text" name="timTen" placeholder="Nhap ten Can Tim">
    <select name="timCombo">
        <% for (TacGia l : listCB) { %>
        <option value="<%= l.getId()%>"><%= l.getTenTG() %></option>
        <% } %>
    </select>
    <button type="submit">Search</button>
</form>
<button><a href="/view/create.jsp">ADD</a></button>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>MaSach</th>
        <th>TenSach</th>
        <th>NamXuatBan</th>
        <th>TheLoai</th>
        <th>TacGiaID</th>
        <th>ACTION</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="s" items="${list}">
        <tr>
            <td>${s.id}</td>
            <td>${s.maSach}</td>
            <td>${s.tenSach}</td>
            <td>${s.nam}</td>
            <td>${s.theLoai}</td>
            <td>${s.tgId}</td>
            <td>
                <a href="/sach/delete?id=${s.id}">Detele</a>
                <a href="/sach/detail?id=${s.id}">Detail</a>
                <a href="/sach/viewUpdate?id=${s.id}">Update</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div>
    <c:if test="${pageNo == 0}">
    <a href="/sach/hien-thi?page=${pageNo + 1}">Next</a>
    </c:if>
    <c:if test="${pageNo > 0}">
    <a href="/sach/hien-thi?page=${pageNo - 1}">Pre</a>
    </c:if>
</div>
</body>
</html>
