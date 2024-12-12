<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="repository.NhanVienRepository" %>
<%@ page import="entity.CuaHang" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.ChucVu" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/30/2024
  Time: 12:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NhanVien Management</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f8f9fa;
    }
    .form-container, .table-container {
      margin: 20px auto;
      background: #ffffff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .form-container {
      max-width: 600px;
    }
  </style>
</head>
<body>
<%
  NhanVienRepository repo = new NhanVienRepository();
  List<CuaHang> get = repo.getCh();
  List<CuaHang> data = new ArrayList<>();
  List<ChucVu> getCv = repo.getCv();
  List<ChucVu> dataCv = new ArrayList<>();
  try {
    data.addAll(get);
    dataCv.addAll(getCv);
  }catch (Exception e){

  }
%>
<button type="button" class="btn btn-success"><a href="http://localhost:8080" style="color:white;text-decoration: none">Home</a></button>

<div class="container">
  <!-- Form Section -->
  <div class="form-container">
    <h3 class="text-center">Add New NhanVien</h3>
    <form action="/nv/nvall" method="post">
      <div class="mb-3">
        <label for="ma" class="form-label">Ma</label>
        <input type="text" id="ma" name="ma" class="form-control" required>
      </div>
      <div class="mb-3">
        <label for="ten" class="form-label">Ten</label>
        <input type="text" id="ten" name="ten" class="form-control" required>
      </div>
      <div class="mb-3">
        <label for="tenDem" class="form-label">Ten Dem</label>
        <input type="text" id="tenDem" name="tenDem" class="form-control" required>
      </div>
      <div class="mb-3">
        <label for="ho" class="form-label">Ho</label>
        <input type="text" id="ho" name="ho" class="form-control" required>
      </div>
      <div class="mb-3">
        <label class="form-label">Gioi Tinh</label>
        <div>
          <input type="radio" id="nam" value="Nam" name="gioiTinh" class="form-check-input">
          <label for="nam" class="form-check-label">Nam</label>
          <input type="radio" id="nu" value="Nu" name="gioiTinh" class="form-check-input ms-3">
          <label for="nu" class="form-check-label">Nu</label>
        </div>
      </div>
      <div class="mb-3">
        <label for="ngaySinh" class="form-label">Ngay Sinh</label>
        <input type="date" id="ngaySinh" name="ngaySinh" class="form-control" required>
      </div>
      <div class="mb-3">
        <label for="diaChi" class="form-label">Dia Chi</label>
        <input type="text" id="diaChi" name="diaChi" class="form-control" required>
      </div>
      <div class="mb-3">
        <label for="sdt" class="form-label">SDT</label>
        <input type="number" id="sdt" name="sdt" class="form-control" required>
      </div>
      <div class="mb-3">
        <label for="matKhau" class="form-label">Mat Khau</label>
        <input type="password" id="matKhau" name="matKhau" class="form-control" required>
      </div>
      <div class="mb-3">
        <label for="trangThai" class="form-label">Trang Thai</label>
        <input type="number" id="trangThai" name="trangThai" class="form-control" required>
      </div>
      <div class="mb-3">
        <label for="idCh" class="form-label">ID CH</label>
        <select id="idCh" name="idCh" class="form-select">
          <%
            for (CuaHang s : data) {
          %>
          <option value="<%=s.getId()%>"><%=s.getTen()%></option>
          <%
            }
          %>
        </select>
      </div>
      <div class="mb-3">
        <label for="idCv" class="form-label">ID CV</label>
        <select id="idCv" name="idCv" class="form-select">
          <%
            for (ChucVu n : dataCv) {
          %>
          <option value="<%=n.getId()%>"><%=n.getTen()%></option>
          <%
            }
          %>
        </select>
      </div>
      <button type="submit" name="action" value="add" class="btn btn-primary w-100">Add</button>
    </form>
  </div>

  <!-- Table Section -->
  <div class="table-container">
    <h3 class="text-center">NhanVien List</h3>
    <table class="table table-striped table-bordered">
      <thead class="table-dark">
      <tr>
        <th>ID</th>
        <th>Ma</th>
        <th>Ten</th>
        <th>Ten Dem</th>
        <th>Ho</th>
        <th>Gioi Tinh</th>
        <th>Ngay Sinh</th>
        <th>Dia Chi</th>
        <th>SDT</th>
        <th>Mat Khau</th>
        <th>ID CH</th>
        <th>ID CV</th>
        <th>Trang Thai</th>
        <th>ACTION</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="nsx" items="${listnv}">
        <tr>
          <td>${nsx.id}</td>
          <td>${nsx.ma}</td>
          <td>${nsx.ten}</td>
          <td>${nsx.tenDem}</td>
          <td>${nsx.ho}</td>
          <td>${nsx.gioiTinh}</td>
          <td>${nsx.ngaySinh}</td>
          <td>${nsx.diaChi}</td>
          <td>${nsx.sdt}</td>
          <td>${nsx.matKhau}</td>
          <td>${nsx.idCh}</td>
          <td>${nsx.idCv}</td>
          <td>${nsx.trangThai}</td>
          <td>
            <a href="/nv/nvdelete?id=${nsx.id}" class="btn btn-danger btn-sm">Delete</a>
            <a href="/nv/nvdetail?id=${nsx.id}" class="btn btn-info btn-sm">Detail</a>
          </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
