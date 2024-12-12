<%@ page import="repository.SachRepository" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.Nxb" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/28/2024
  Time: 2:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    SachRepository repo = new SachRepository();
    List<Nxb> get = repo.getcbb();
    List<Nxb> data = new ArrayList<>();
    try {
        data.addAll(get);
    }catch (Exception e){

    }
%>
<form action="/sach/get-all" method="post">
    <input type="hidden" name="id" value="${sach.id}"><br>
    <input type="text" name="ma" value="${sach.ma}" required><br>
    <input type="text" name="ten" value="${sach.ten}"required><br>
    <input type="number" name="soTrang" value="${sach.soTrang}" required><br>
    <input type="number" name="donGia" value="${sach.donGia}" required><br>
    <input type="number" name="trangThai" value="${sach.trangThai}" required><br>
    <select>
        <%
            for (Nxb n : data){
        %>
        <option value="<%= n.getId()%>"><%=n.getTen()%></option>
        <%
            }
        %>
    </select><br>
    <input type="submit" name="action" value="update">
</form>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>MA</th>
        <th>TEN</th>
        <th>SO TRANG</th>
        <th>DON GIA</th>
        <th>TRANG THAI</th>
        <th>Ma nxb</th>
        <th>Ten nxb</th>
        <th>ACTION</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="s" items="${list}">
    <tr>
        <td>${s.id}</td>
        <td>${s.ma}</td>
        <td>${s.ten}</td>
        <td>${s.soTrang}</td>
        <td>${s.donGia}</td>
        <td>${s.trangThai}</td>
        <td>${s.idNxb.ma}</td>
        <td>${s.idNxb.ten}</td>
        <td>
            <a href="/sach/delete?id=${s.id}">Delete</a>
            <a href="/sach/detail?id=${s.id}">Detail</a>
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
<c:if test="${pageNo  == 0}">
<a href="/sach/get-all?pageNo=${pageNo +1}">Next</a>
</c:if>


<c:if test="${pageNo < TongPage}">
<a href="/sach/get-all?pageNo=${pageNo - 1}">Pre</a>
</c:if>
</body>
</html>
