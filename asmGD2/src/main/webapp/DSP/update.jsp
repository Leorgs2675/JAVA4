<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/29/2024
  Time: 8:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Dong SP</title>
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
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="text-center">Update Dong SP</h1>
    <div class="form-container">
        <form action="/dsp/dspall" method="post">
            <input type="hidden" name="id" value="${sp.id}">
            <div class="mb-3">
                <label for="ma" class="form-label">Ma</label>
                <input type="text" id="ma" name="ma" class="form-control" value="${sp.ma}" required>
            </div>
            <div class="mb-3">
                <label for="ten" class="form-label">Ten</label>
                <input type="text" id="ten" name="ten" class="form-control" value="${sp.ten}" required>
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
