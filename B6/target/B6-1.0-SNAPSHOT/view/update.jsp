<%@ page import="repository.SinhVienRepository" %>
<%@ page import="entity.Lop" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/13/2024
  Time: 3:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
<form action="/sinh-vien/hien-thi" method="post">
    <input type="text" name="id" value="${gv.id}">
    <input type="text" name="ma" value="${gv.ma}">
    <input type="text" name="ten" value="${gv.ten}">
    <input type="text" name="tuoi" value="${gv.tuoi}">
    <label>Gioi Tinh: </label>
    <input type="radio" name="gioiTinh" value="1"
           <c:if test="${gv.gioiTinh == true}">checked</c:if> required> Nam
    <input type="radio" name="gioiTinh" value="0"
           <c:if test="${gv.gioiTinh == false}">checked</c:if> required> Nu<br>
    <input type="text" name="diaChi" value="${gv.diaChi}">
    <select name="lopId">
        <% for (Lop l : listCB) { %>
        <option value="<%=l.getLID()%>"><%= l.getLTen() %></option>
        <% } %>
    </select>
    <button type="submit" name="action" value="update" onclick="confirm()">Update</button>
</form>
<script>
    const confirm =()=>{
        alert("Ban Chac Chan Chu!")
    }
</script>
</body>
</html>
