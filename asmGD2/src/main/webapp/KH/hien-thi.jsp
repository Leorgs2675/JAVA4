<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/29/2024
  Time: 9:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Quản Lý Khách Hàng</title>
  <!-- Include Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f8f9fa;
      padding: 20px;
    }
    .form-container, .table-container {
      margin: auto;
      background: white;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .form-container {
      max-width: 700px;
      margin-bottom: 30px;
    }
    .table-container {
      max-width: 1200px;
    }
    h1 {
      text-align: center;
      margin-bottom: 20px;
    }
  </style>
</head>
<body>
<button type="button" class="btn btn-success"><a href="http://localhost:8080" style="color:white;text-decoration: none">Home</a></button>

<div class="container">
  <h1>Quản Lý Khách Hàng</h1>

  <!-- Form Section -->
  <div class="form-container">
    <form action="/kh/khall" method="post">
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
        <label for="ngaySinh" class="form-label">Ngay Sinh</label>
        <input type="date" id="ngaySinh" name="ngaySinh" class="form-control" required>
      </div>
      <div class="mb-3">
        <label for="sdt" class="form-label">SDT</label>
        <input type="number" id="sdt" name="sdt" class="form-control" required>
      </div>
      <div class="mb-3">
        <label for="diaChi" class="form-label">Dia Chi</label>
        <input type="text" id="diaChi" name="diaChi" class="form-control" required>
      </div>
      <div class="mb-3">
        <label for="thanhPho" class="form-label">Thanh Pho</label>
        <input type="text" id="thanhPho" name="thanhPho" class="form-control" required>
      </div>
      <div class="mb-3">
        <label for="quocGia" class="form-label">Quoc Gia</label>
        <input type="text" id="quocGia" name="quocGia" class="form-control" required>
      </div>
      <div class="mb-3">
        <label for="matKhau" class="form-label">Mat Khau</label>
        <input type="text" id="matKhau" name="matKhau" class="form-control" required>
      </div>
      <div class="text-center">
        <button type="submit" name="action" value="add" class="btn btn-primary">Add</button>
      </div>
    </form>
  </div>

  <!-- Table Section -->
  <div class="table-container">
    <table class="table table-striped table-bordered">
      <thead class="table-dark">
      <tr>
        <th>ID</th>
        <th>MA</th>
        <th>TEN</th>
        <th>TEN DEM</th>
        <th>HO</th>
        <th>NGAY SINH</th>
        <th>SDT</th>
        <th>DIA CHI</th>
        <th>THANH PHO</th>
        <th>QUOC GIA</th>
        <th>MAT KHAU</th>
        <th>ACTION</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="nsx" items="${listkh}">
        <tr>
          <td>${nsx.id}</td>
          <td>${nsx.ma}</td>
          <td>${nsx.ten}</td>
          <td>${nsx.tenDem}</td>
          <td>${nsx.ho}</td>
          <td>${nsx.ngaySinh}</td>
          <td>${nsx.sdt}</td>
          <td>${nsx.diaChi}</td>
          <td>${nsx.thanhPho}</td>
          <td>${nsx.quocGia}</td>
          <td>${nsx.matKhau}</td>
          <td>
            <a href="/kh/khdelete?id=${nsx.id}" class="btn btn-danger btn-sm">Delete</a>
            <a href="/kh/khdetail?id=${nsx.id}" class="btn btn-info btn-sm">Detail</a>
          </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
</div>

<!-- Include Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
