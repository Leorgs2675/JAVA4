<%@ page import="java.util.List" %>
<%@ page import="entity.Lop" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="repository.SinhVienRepository" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/11/2024
  Time: 2:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<%
    SinhVienRepository reposi = new SinhVienRepository();
    List<Lop> listCB = new ArrayList<>();
      List<Lop> get = reposi.getCB();
    try {
        listCB.addAll(get);
    }catch (Exception e){

    }

%>
<form action="/sinh-vien/search" method="get">
    <input type="text" placeholder="Nhap tuoi can tim" name="timTuoi">
    <select name="timCombo">
        <% for (Lop l : listCB) { %>
        <option value="<%= l.getLID()%>"><%= l.getLTen() %></option>
        <% } %>
    </select>
    <button type="submit" onclick="confirm()">Search</button>
</form>
<a href="/view/create.jsp" onclick="confirmADD()">ADD</a>
<a href="/sinh-vien/top3" name="tim3" onclick="confirm()">TOP </a>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>MA</th>
        <th>TEN</th>
        <th>TUOI</th>
        <th>DIA CHI</th>
        <th>GIOI TINH</th>
        <th>LOP ID</th>
<%--        <th>ID LOP</th>--%>
        <th>MA LOP</th>
        <th>TEN LOP</th>
        <th>ACTION</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="s" items="${list}">
        <tr>
            <td>${s.id}</td>
            <td>${s.ma}</td>
            <td>${s.ten}</td>
            <td>${s.tuoi}</td>
            <td>${s.diaChi}</td>
            <td>${s.gioiTinh ? "Nam":"Nu"}</td>
            <td>${s.lopId.LID}</td>
<%--            <td>${s.lopId.LopID}</td>--%>
            <td>${s.lopId.LMa}</td>
            <td>${s.lopId.LTen}</td>
            <td>
                <a href="/sinh-vien/detail?id=${s.id}" onclick="confirm()">DETAIL</a>
                <a href="/sinh-vien/view-update?id=${s.id}" onclick="confirm()">UPDATE</a>
                <a href="/sinh-vien/delete?id=${s.id}" onclick="confirm()">DELETE</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div>
    <a href="/sinh-vien/hien-thi?page=${pageNo + 1}">Next</a>
    <a href="/sinh-vien/hien-thi?page=${1}">1</a>
    <a href="/sinh-vien/hien-thi?page=${2}">2</a>
    <a href="/sinh-vien/hien-thi?page=${3}">3</a>
    <a href="/sinh-vien/hien-thi?page=${4}">4</a>
    <a href="/sinh-vien/hien-thi?page=${5}">5</a>
    <a href="/sinh-vien/hien-thi?page=${6}">6</a>
    <a href="/sinh-vien/hien-thi?page=${7}">7</a>
    <a href="/sinh-vien/hien-thi?page=${8}">8</a>
    <a href="/sinh-vien/hien-thi?page=${9}">9</a>
    <a href="/sinh-vien/hien-thi?page=${10}">10</a>
    <a href="/sinh-vien/hien-thi?page=${pageNo - 1}">Pre</a>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script>
    const confirm =()=>{
        alert("Ban Chac Chan Chu!")
    }
    const confirmADD =()=>{
        alert("Ban Chac Chan Muon ADD!")
    }
</script>
</body>
</html>
