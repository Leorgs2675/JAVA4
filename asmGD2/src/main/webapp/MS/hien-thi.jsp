<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/28/2024
  Time: 10:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NSX Management</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            max-width: 500px;
            margin: 30px auto;
            background: #ffffff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        table {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<button type="button" class="btn btn-success"><a href="http://localhost:8080" style="color:white;text-decoration: none">Home</a></button>

<div class="container">
    <div class="form-container">
        <h3 class="text-center">Add New MS</h3>
        <form action="/ms/msall" method="post">
            <div class="mb-3">
                <label for="ma" class="form-label">Ma</label>
                <input type="text" id="ma" name="ma" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="ten" class="form-label">Ten</label>
                <input type="text" id="ten" name="ten" class="form-control" required>
            </div>
            <button type="submit" name="action" value="add" class="btn btn-primary w-100">Add</button>
        </form>
    </div>

    <h3 class="text-center mt-4">MS List</h3>
    <table class="table table-striped table-bordered">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>MA</th>
            <th>TEN</th>
            <th>ACTION</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="nsx" items="${listmsx}">
            <tr>
                <td>${nsx.id}</td>
                <td>${nsx.ma}</td>
                <td>${nsx.ten}</td>
                <td>
                    <a href="/ms/msdelete?id=${nsx.id}" class="btn btn-danger btn-sm">Delete</a>
                    <a href="/ms/msdetail?id=${nsx.id}" class="btn btn-info btn-sm">Detail</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
