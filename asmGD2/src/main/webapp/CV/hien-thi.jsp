<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/29/2024
  Time: 8:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage CV</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding: 20px;
            background-color: #f8f9fa;
        }
        .form-container, .table-container {
            margin: auto;
            max-width: 800px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .table-container {
            margin-top: 30px;
        }
    </style>
</head>
<body>
<button type="button" class="btn btn-success"><a href="http://localhost:8080" style="color:white;text-decoration: none">Home</a></button>

<div class="container">
    <h1 class="text-center my-4">Manage CV</h1>

    <!-- Form Section -->
    <div class="form-container">
        <form action="/cv/cvall" method="post">
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
        <table class="table table-striped table-hover">
            <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>MA</th>
                <th>TEN</th>
                <th>ACTION</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="nsx" items="${listcv}">
                <tr>
                    <td>${nsx.id}</td>
                    <td>${nsx.ma}</td>
                    <td>${nsx.ten}</td>
                    <td>
                        <a href="/cv/cvdelete?id=${nsx.id}" class="btn btn-danger btn-sm">Delete</a>
                        <a href="/cv/cvdetail?id=${nsx.id}" class="btn btn-info btn-sm">Detail</a>
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
