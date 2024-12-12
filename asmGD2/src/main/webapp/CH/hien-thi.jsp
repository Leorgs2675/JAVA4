<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Manage Entries</title>
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
        table {
            margin-top: 20px;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            text-align: center;
        }
        .btn {
            margin: 0 5px;
        }
    </style>
</head>
<body>
<button type="button" class="btn btn-success"><a href="http://localhost:8080" style="color:white;text-decoration: none">Home</a></button>

<div class="container">
    <h1 class="text-center my-4">Manage</h1>
    <form action="/ch/chall" method="post" class="shadow p-4 rounded bg-white">
        <div class="mb-3">
            <label for="ma" class="form-label">Ma</label>
            <input type="text" class="form-control" id="ma" name="ma" required>
        </div>
        <div class="mb-3">
            <label for="ten" class="form-label">Ten</label>
            <input type="text" class="form-control" id="ten" name="ten" required>
        </div>
        <div class="mb-3">
            <label for="diaChi" class="form-label">Dia Chi</label>
            <input type="text" class="form-control" id="diaChi" name="diaChi" required>
        </div>
        <div class="mb-3">
            <label for="thanhPho" class="form-label">Thanh Pho</label>
            <input type="text" class="form-control" id="thanhPho" name="thanhPho" required>
        </div>
        <div class="mb-3">
            <label for="quocGia" class="form-label">Quoc Gia</label>
            <input type="text" class="form-control" id="quocGia" name="quocGia" required>
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-primary" name="action" value="add">Add</button>
        </div>
    </form>
    <table class="table table-hover mt-4 shadow">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>MA</th>
            <th>TEN</th>
            <th>DIA CHI</th>
            <th>THANH PHO</th>
            <th>QUOC GIA</th>
            <th>ACTION</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="nsx" items="${listch}">
            <tr>
                <td>${nsx.id}</td>
                <td>${nsx.ma}</td>
                <td>${nsx.ten}</td>
                <td>${nsx.diaChi}</td>
                <td>${nsx.thanhPho}</td>
                <td>${nsx.quocGia}</td>
                <td>
                    <a href="/ch/chdelete?id=${nsx.id}" class="btn btn-danger btn-sm">Delete</a>
                    <a href="/ch/chdetail?id=${nsx.id}" class="btn btn-info btn-sm">Detail</a>
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
