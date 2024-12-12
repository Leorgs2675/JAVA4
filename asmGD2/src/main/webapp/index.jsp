<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP - Hello World</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4"><%= "Quan Ly Ban Hang" %></h1>
    <div class="d-flex flex-wrap gap-3 justify-content-center">
        <a href="/sp/all" class="btn btn-primary">Quan Ly San Pham</a>
        <a href="/nsx/nsxall" class="btn btn-secondary">Nha San Xuat</a>
        <a href="/ms/msall" class="btn btn-success">Quan Ly Mau Sac</a>
        <a href="/dsp/dspall" class="btn btn-danger">Quan Ly Dong Sp</a>
        <a href="/cv/cvall" class="btn btn-warning">Quan Ly Chuc Vu</a>
        <a href="/ch/chall" class="btn btn-info">Quan Ly Cua Hang</a>
        <a href="/kh/khall" class="btn btn-light border">Quan Ly Khach Hang</a>
        <a href="/ct/ctall" class="btn btn-dark">Quan Ly CTSP</a>
        <a href="/nv/nvall" class="btn btn-primary">Quan Ly Nhan Vien</a>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
