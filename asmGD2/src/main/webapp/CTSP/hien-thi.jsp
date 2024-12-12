<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="repository.ChiTietSpRepository" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.SanPham" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.Nsx" %>
<%@ page import="entity.MauSac" %>
<%@ page import="entity.DongSp" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/29/2024
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ChiTietSP Management</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            padding: 20px;
            background-color: #f8f9fa;
        }
        form {
            max-width: 800px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            margin-top: 20px;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            text-align: center;
            vertical-align: middle;
        }
        .btn {
            margin: 0 5px;
        }
    </style>
</head>
<body>
<%
    ChiTietSpRepository repo = new ChiTietSpRepository();
    List<SanPham> get = repo.getSp();
    List<SanPham> data = new ArrayList<>();
    List<Nsx> getNsx = repo.getNsx();
    List<Nsx> dataNsx = new ArrayList<>();
    List<MauSac> getMs = repo.getMs();
    List<MauSac> dataMs = new ArrayList<>();
    List<DongSp> getDongSp = repo.getDongSp();
    List<DongSp> dataDongSp = new ArrayList<>();
    try {
        data.addAll(get);
        dataMs.addAll(getMs);
        dataDongSp.addAll(getDongSp);
        dataNsx.addAll(getNsx);
    }catch (Exception e){

    }
%>
<button type="button" class="btn btn-success"><a href="http://localhost:8080" style="color:white;text-decoration: none">Home</a></button>

<div class="container">
    <h1 class="text-center my-4">ChiTietSP Management</h1>
    <form action="/ct/ctall" method="post" class="shadow p-4 rounded bg-white">
        <div class="mb-3">
            <label for="idSp" class="form-label">ID SP</label>
            <select class="form-select" id="idSp" name="idSp" required>
                <% for (SanPham s : data) { %>
                <option value="<%= s.getId() %>"><%= s.getTen() %></option>
                <% } %>
            </select>
        </div>
        <div class="mb-3">
            <label for="idNsx" class="form-label">ID NSX</label>
            <select class="form-select" id="idNsx" name="idNsx" required>
                <% for (Nsx n : dataNsx) { %>
                <option value="<%= n.getId() %>"><%= n.getTen() %></option>
                <% } %>
            </select>
        </div>
        <div class="mb-3">
            <label for="idMauSac" class="form-label">ID Mau Sac</label>
            <select class="form-select" id="idMauSac" name="idMauSac" required>
                <% for (MauSac ms : dataMs) { %>
                <option value="<%= ms.getId() %>"><%= ms.getTen() %></option>
                <% } %>
            </select>
        </div>
        <div class="mb-3">
            <label for="idDongSp" class="form-label">ID Dong SP</label>
            <select class="form-select" id="idDongSp" name="idDongSp" required>
                <% for (DongSp dsp : dataDongSp) { %>
                <option value="<%= dsp.getId() %>"><%= dsp.getTen() %></option>
                <% } %>
            </select>
        </div>
        <div class="mb-3">
            <label for="namBh" class="form-label">Nam BH</label>
            <input type="number" class="form-control" id="namBh" name="namBh" required>
        </div>
        <div class="mb-3">
            <label for="moTa" class="form-label">Mo Ta</label>
            <input type="text" class="form-control" id="moTa" name="moTa" required>
        </div>
        <div class="mb-3">
            <label for="soLuongTon" class="form-label">SL Ton</label>
            <input type="number" class="form-control" id="soLuongTon" name="soLuongTon" required>
        </div>
        <div class="mb-3">
            <label for="giaBan" class="form-label">Gia Ban</label>
            <input type="number" class="form-control" id="giaBan" name="giaBan" required>
        </div>
        <div class="mb-3">
            <label for="giaNhap" class="form-label">Gia Nhap</label>
            <input type="number" class="form-control" id="giaNhap" name="giaNhap" required>
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-primary" name="action" value="add">Add</button>
        </div>
    </form>
    <table class="table table-hover mt-4 shadow">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>ID SP</th>
            <th>ID NSX</th>
            <th>ID Mau Sac</th>
            <th>ID Dong SP</th>
            <th>Nam BH</th>
            <th>Mo Ta</th>
            <th>SL Ton</th>
            <th>Gia Nhap</th>
            <th>Gia Ban</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="nsx" items="${listct}">
            <tr>
                <td>${nsx.id}</td>
                <td>${nsx.idSp}</td>
                <td>${nsx.idNsx}</td>
                <td>${nsx.idMauSac}</td>
                <td>${nsx.idDongSp}</td>
                <td>${nsx.namBh}</td>
                <td>${nsx.moTa}</td>
                <td>${nsx.soLuongTon}</td>
                <td>${nsx.giaNhap}</td>
                <td>${nsx.giaBan}</td>
                <td>
                    <a href="/ct/ctdelete?id=${nsx.id}" class="btn btn-danger btn-sm">Delete</a>
                    <a href="/ct/ctdetail?id=${nsx.id}" class="btn btn-info btn-sm">Detail</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<!-- Include Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
