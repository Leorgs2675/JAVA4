<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/29/2024
  Time: 8:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Dong SP Management</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            padding: 20px;
        }
        .form-container {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .table-container {
            margin-top: 20px;
        }
        .table th, .table td {
            vertical-align: middle;
        }
    </style>
</head>
<body>
<button type="button" class="btn btn-success"><a href="http://localhost:8080" style="color:white;text-decoration: none">Home</a></button>

<div class="container">
    <h1 class="text-center my-4">Manage Dong SP</h1>

    <!-- Form Section -->
    <div class="form-container">
        <form action="/dsp/dspall" method="post">
            <div class="mb-3">
                <label for="ma" class="form-label">Ma</label>
                <input type="text" id="ma" name="ma" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="ten" class="form-label">Ten</label>
                <input type="text" id="ten" name="ten" class="form-control" required>
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
                <th>Ma</th>
                <th>Ten</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="nsx" items="${listdsp}">
                <tr>
                    <td>${nsx.id}</td>
                    <td>${nsx.ma}</td>
                    <td>${nsx.ten}</td>
                    <td>
                        <a href="/dsp/dspdelete?id=${nsx.id}" class="btn btn-danger btn-sm">Delete</a>
                        <a href="/dsp/dspdetail?id=${nsx.id}" class="btn btn-info btn-sm">Detail</a>
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
