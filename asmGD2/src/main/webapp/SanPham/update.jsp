<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/28/2024
  Time: 8:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Edit San Pham</h1>
    <form action="/sp/all" method="post" class="border p-4 rounded shadow-sm bg-light">
        <input type="hidden" name="id" value="${sp.id}">
        <div class="mb-3">
            <label for="ma" class="form-label">Ma</label>
            <input type="text" id="ma" name="ma" class="form-control" value="${sp.ma}" required>
        </div>
        <div class="mb-3">
            <label for="ten" class="form-label">Ten</label>
            <input type="text" id="ten" name="ten" class="form-control" value="${sp.ten}" required>
        </div>
        <button type="submit" name="action" value="update" class="btn btn-primary w-100">Update</button>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
