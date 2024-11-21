<%@ page import="com.example.b9.repository.NhanVienRepository" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.b9.entity.CoSoLamViec" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/20/2024
  Time: 8:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    NhanVienRepository repo = new NhanVienRepository();
    List<CoSoLamViec> listCs = new ArrayList<>();
    List<CoSoLamViec> getList = repo.getCB();
    try {
        listCs.addAll(getList);
    }catch (Exception e){
        e.printStackTrace();
    }
%>
<form action="/nhan-vien/hien-thi" method="post">
<input type="text" name="ten" placeholder="Nhap ten"><br>
<input type="text" name="tuoi" placeholder="Nhap tuoi"><br>
<input type="text" name="diaChi" placeholder="Nhap dia chi"><br>
<input type="radio" name="gioiTinh" value="1">Nam<br>
<input type="radio" name="gioiTinh" value="0">Nu<br>
<select name="coSoLamViecId">
    <% for (CoSoLamViec cs : listCs){%>
    <option value="<%= cs.getId()%>"><%= cs.getMa()%></option>
    <%
        }
    %>
</select><br>
<button value="add" name="action" type="submit">Add</button>
</form>
<table>
    <thead>
    <tr>
        <th>TEN</th>
        <th>TUOI</th>
        <th>DIA CHI</th>
        <th>GIOI TINH</th>
        <th>ACTION</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="n" items="${list}">
        <tr>
            <td>${n.ten}</td>
            <td>${n.tuoi}</td>
            <td>${n.diaChi}</td>
            <td>${n.gioiTinh ? 'Nam':'Nu'}</td>
            <td>
                <a href="/nhan-vien/detail?id=${n.id}">DETAIL</a>
                <a href="/nhan-vien/delete?id=${n.id}">UPDATE</a>
                <a href="/nhan-vien/view-updatel?id=${n.id}">DELETE</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
