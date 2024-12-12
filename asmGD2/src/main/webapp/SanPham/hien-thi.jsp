<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/28/2024
  Time: 7:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<button type="button" class="btn btn-success"><a href="http://localhost:8080" style="color:white;text-decoration: none"  >Home</a></button>
<div class="container mt-5">
    <h1 class="text-center mb-4">San Pham</h1>
    <form action="/sp/all" method="post" class="mb-4">
        <div class="mb-3">
            <label for="ma" class="form-label">Ma</label>
            <input type="text" id="ma" name="ma" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="ten" class="form-label">Ten</label>
            <input type="text" id="ten" name="ten" class="form-control" required>
        </div>
        <button type="submit" name="action" value="add" class="btn btn-primary">Add</button>
    </form>

    <table class="table table-bordered table-striped">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>MA</th>
            <th>TEN</th>
            <th>ACTION</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="sp" items="${list}">
            <tr>
                <td>${sp.id}</td>
                <td>${sp.ma}</td>
                <td>${sp.ten}</td>
                <td>
                    <a href="/sp/delete?id=${sp.id}" class="btn btn-danger btn-sm">Delete</a>
                    <a href="/sp/detail?id=${sp.id}" class="btn btn-info btn-sm">Detail</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
