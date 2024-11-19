<%@ page import="repository.SinhVienRepository" %>
<%@ page import="entity.Lop" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/13/2024
  Time: 2:58 PM
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
    <input type="hidden" name="id">
    <input type="text" name="ma" placeholder="ma">
    <input type="text" name="ten" placeholder="ten" >
    <input type="text" name="tuoi" placeholder="tuoi">
    <label>Giới Tính:</label>
    <input type="radio" id="gioiTinhNam" name="gioiTinh" value="1" checked>
    <label for="gioiTinhNam">Nam</label>

    <input type="radio" id="gioiTinhNu" name="gioiTinh" value="0">
    <label for="gioiTinhNu">Nữ</label>
    <input type="text" name="diaChi" placeholder="dia chi" >
    <select name="lopId">
        <% for (Lop l : listCB) { %>
        <option value="<%=l.getLID()%>"><%= l.getLTen() %></option>
        <% } %>
    </select>
    <button type="submit" name="action" value="add" onclick="confirmADD()">ADD</button>
</form>
<script>
    const confirmADD =()=>{
        alert("Ban Chac Chan Muon ADD!")
    }
</script>
</body>
</html>
