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
    <title>Edit CV</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding: 20px;
            background-color: #f8f9fa;
        }
        .form-container {
            margin: auto;
            max-width: 500px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="text-center my-4">Edit CV</h1>

    <!-- Form Section -->
    <div class="form-container">
        <form action="/cv/cvall" method="post">
            <input type="hidden" name="id" value="${sp.id}">
            <div class="mb-3">
                <label for="ma" class="form-label">Ma</label>
                <input type="text" id="ma" name="ma" value="${sp.ma}" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="ten" class="form-label">Ten</label>
                <input type="text" id="ten" name="ten" value="${sp.ten}" class="form-control" required>
            </div>
            <div class="text-center">
                <button type="submit" name="action" value="update" class="btn btn-primary">Update</button>
            </div>
        </form>
    </div>
</div>

<!-- Include Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
