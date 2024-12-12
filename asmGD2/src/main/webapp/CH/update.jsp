<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/29/2024
  Time: 9:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Entry</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            padding: 20px;
            background-color: #f8f9fa;
        }
        form {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="text-center my-4">Edit</h1>
    <form action="/ch/chall" method="post" class="shadow p-4 rounded bg-white">
        <input type="hidden" name="id" value="${sp.id}">
        <div class="mb-3">
            <label for="ma" class="form-label">Ma</label>
            <input type="text" class="form-control" id="ma" name="ma" value="${sp.ma}" required>
        </div>
        <div class="mb-3">
            <label for="ten" class="form-label">Ten</label>
            <input type="text" class="form-control" id="ten" name="ten" value="${sp.ten}" required>
        </div>
        <div class="mb-3">
            <label for="diaChi" class="form-label">Dia Chi</label>
            <input type="text" class="form-control" id="diaChi" name="diaChi" value="${sp.diaChi}" required>
        </div>
        <div class="mb-3">
            <label for="thanhPho" class="form-label">Thanh Pho</label>
            <input type="text" class="form-control" id="thanhPho" name="thanhPho" value="${sp.thanhPho}" required>
        </div>
        <div class="mb-3">
            <label for="quocGia" class="form-label">Quoc Gia</label>
            <input type="text" class="form-control" id="quocGia" name="quocGia" value="${sp.quocGia}" required>
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-primary" name="action" value="update">Update</button>
        </div>
    </form>
</div>
<!-- Include Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
