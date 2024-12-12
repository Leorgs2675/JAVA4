<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/29/2024
  Time: 10:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Customer Form</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f8f9fa;
      font-family: Arial, sans-serif;
    }
    .form-container {
      max-width: 600px;
      margin: 50px auto;
      padding: 20px;
      background: #ffffff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
    }
    .form-container h1 {
      margin-bottom: 20px;
      font-size: 24px;
      color: #343a40;
      text-align: center;
    }
    .form-container label {
      font-weight: bold;
    }
    .form-container .btn-primary {
      width: 100%;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="form-container">
    <h1>Customer Information</h1>
    <form action="/kh/khall" method="post">
      <input type="hidden" name="id" value="${sp.id}">

      <div class="mb-3">
        <label for="ma" class="form-label">Mã</label>
        <input type="text" class="form-control" id="ma" name="ma" value="${sp.ma}" required>
      </div>

      <div class="mb-3">
        <label for="ten" class="form-label">Tên</label>
        <input type="text" class="form-control" id="ten" name="ten" value="${sp.ten}" required>
      </div>

      <div class="mb-3">
        <label for="tenDem" class="form-label">Tên Đệm</label>
        <input type="text" class="form-control" id="tenDem" name="tenDem" value="${sp.tenDem}" required>
      </div>

      <div class="mb-3">
        <label for="ho" class="form-label">Họ</label>
        <input type="text" class="form-control" id="ho" name="ho" value="${sp.ho}" required>
      </div>

      <div class="mb-3">
        <label for="ngaySinh" class="form-label">Ngày Sinh</label>
        <input type="date" class="form-control" id="ngaySinh" name="ngaySinh" value="${sp.ngaySinh}" required>
      </div>

      <div class="mb-3">
        <label for="sdt" class="form-label">Số Điện Thoại</label>
        <input type="number" class="form-control" id="sdt" name="sdt" value="${sp.sdt}" required>
      </div>

      <div class="mb-3">
        <label for="diaChi" class="form-label">Địa Chỉ</label>
        <input type="text" class="form-control" id="diaChi" name="diaChi" value="${sp.diaChi}" required>
      </div>

      <div class="mb-3">
        <label for="thanhPho" class="form-label">Thành Phố</label>
        <input type="text" class="form-control" id="thanhPho" name="thanhPho" value="${sp.thanhPho}" required>
      </div>

      <div class="mb-3">
        <label for="quocGia" class="form-label">Quốc Gia</label>
        <input type="text" class="form-control" id="quocGia" name="quocGia" value="${sp.quocGia}" required>
      </div>

      <div class="mb-3">
        <label for="matKhau" class="form-label">Mật Khẩu</label>
        <input type="text" class="form-control" id="matKhau" name="matKhau" value="${sp.matKhau}" required>
      </div>

      <button type="submit" name="action" value="update" class="btn btn-primary">Cập Nhật</button>
    </form>
  </div>
</div>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
