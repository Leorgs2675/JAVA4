<%@ page import="entity.DonViTinh" %>
<%@ page import="java.util.List" %>
<%@ page import="repository.SanPhamRepository" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/18/2024
  Time: 3:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    SanPhamRepository reposi = new SanPhamRepository();
    List<DonViTinh> listCB = new ArrayList<>();
    List<DonViTinh> get = reposi.cbb();
    try {
        listCB.addAll(get);
    }catch (Exception e){

    }

%>
<form action="/chi-tiet-san-pham/hien-thi" method="post" id="form-add">
<%--    <input type="number" name="idDonViTinh" placeholder="ID Don vi tinh"><br>--%>
    <select name="idDonViTinh">
        <% for (DonViTinh d : listCB) { %>
        <option value="<%= d.getIdDonViTinh()%>"><%= d.getIdDonViTinh() %></option>
        <% } %>
    </select><br>
    <input type="number" name="soLuongTon" placeholder="So luong ton" id="soLuongTon"><br>
    <input type="number" name="donGia" placeholder="Don gia" id="donGia"><br>
    <input type="text" name="ghiChu" placeholder="Ghi chu" id="ghiChu"><br>
    <button type="submit" name="action" value="add">ADD</button>
</form>
<table>
    <thead>
        <tr>
            <th>ID CTSP</th>
<%--            <th>ID DVT</th>--%>
            <th>MA DVT</th>
            <th>TEN DVT</th>
            <th>SO LUONG TON</th>
            <th>DON GIA</th>
            <th>GHI CHU</th>
            <th>ACTION</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="sp">
        <tr>
            <td>${sp.idCTSP}</td>
            <td>${sp.idDonViTinh.maDonViTinh}</td>
            <td>${sp.idDonViTinh.tenDonViTinh}</td>
            <td>${sp.soLuongTon}</td>
            <td>${sp.donGia}</td>
            <td>${sp.ghiChu}</td>
            <td>
                <a href="/chi-tiet-san-pham/delete?idCTSP=${sp.idCTSP}">DELETE</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<c:if test="${pageNo > 0}">
    <a href="/chi-tiet-san-pham/hien-thi?page=${pageNo - 1}">Trang trước</a>
</c:if>

<c:forEach var="i" begin="1" end="${TongPage - 1}">
    <a href="/chi-tiet-san-pham/hien-thi?page=${i}">${i}</a>
</c:forEach>

<c:if test="${pageNo < TongPage -1 }">
    <a href="/chi-tiet-san-pham/hien-thi?page=${pageNo + 1}">Trang sau</a>
</c:if>
<script>
    document.getElementById("form-add").addEventListener("submit", function (e) {
        const fields = ["soLuongTon", "idDonViTinh", "donGia", "ghiChu"];
        let isValid = true;

        fields.forEach((field) => {
            const input = document.getElementById(field);
            if (!input.value.trim()) {
                alert(`${field} không được để trống`);
                isValid = false;
            }
        });

        if (!isValid) {
            e.preventDefault();
        }
    });
</script>
</body>
</html>
