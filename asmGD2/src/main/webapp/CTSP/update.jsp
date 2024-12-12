<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="repository.ChiTietSpRepository" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.SanPham" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.Nsx" %>
<%@ page import="entity.MauSac" %>
<%@ page import="entity.DongSp" %>
<%@ page import="entity.ChiTietSp" %>
<html>
<head>
    <title>Edit ChiTietSP</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding: 20px;
            background-color: #f8f9fa;
        }
        form {
            max-width: 800px;
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
    <h1 class="text-center my-4">Edit ChiTietSP</h1>
    <%
        ChiTietSpRepository repo = new ChiTietSpRepository();
        List<SanPham> get = repo.getSp();
        List<SanPham> data = new ArrayList<>();
        List<Nsx> getNsx = repo.getNsx();
        List<Nsx> dataNsx = new ArrayList<>();
        List<MauSac> getMs = repo.getMs();
        List<MauSac> dataMs = new ArrayList<>();
        List<DongSp> getDongSp = repo.getDongSp();
        List<DongSp> dataDongSp = new ArrayList<>();
        try {
            data.addAll(get);
            dataMs.addAll(getMs);
            dataDongSp.addAll(getDongSp);
            dataNsx.addAll(getNsx);
        } catch (Exception e) {
        }
        ChiTietSp ct = (ChiTietSp) request.getAttribute("sp");
        Integer idsp = ct.getIdSp();
        Integer idNsx = ct.getIdNsx();
        Integer idMs = ct.getIdMauSac();
        Integer idDongsp = ct.getIdDongSp();
    %>
    <form action="/ct/ctall" method="post" class="shadow p-4 rounded bg-white">
        <input type="hidden" name="id" value="${sp.id}">
        <div class="mb-3">
            <label for="idSp" class="form-label">ID SP</label>
            <select class="form-select" id="idSp" name="idSp" required>
                <% for (SanPham s : data) { %>
                <option value="<%= s.getId() %>" <%= s.getId() == idsp ? "selected" : "" %>><%= s.getTen() %></option>
                <% } %>
            </select>
        </div>
        <div class="mb-3">
            <label for="idNsx" class="form-label">ID NSX</label>
            <select class="form-select" id="idNsx" name="idNsx" required>
                <% for (Nsx n : dataNsx) { %>
                <option value="<%= n.getId() %>" <%= n.getId() == idNsx ? "selected" : "" %>><%= n.getTen() %></option>
                <% } %>
            </select>
        </div>
        <div class="mb-3">
            <label for="idMauSac" class="form-label">ID Mau Sac</label>
            <select class="form-select" id="idMauSac" name="idMauSac" required>
                <% for (MauSac ms : dataMs) { %>
                <option value="<%= ms.getId() %>" <%= ms.getId() == idMs ? "selected" : "" %>><%= ms.getTen() %></option>
                <% } %>
            </select>
        </div>
        <div class="mb-3">
            <label for="idDongSp" class="form-label">ID Dong SP</label>
            <select class="form-select" id="idDongSp" name="idDongSp" required>
                <% for (DongSp dsp : dataDongSp) { %>
                <option value="<%= dsp.getId() %>" <%= dsp.getId() == idDongsp ? "selected" : "" %>><%= dsp.getTen() %></option>
                <% } %>
            </select>
        </div>
        <div class="mb-3">
            <label for="namBh" class="form-label">Nam BH</label>
            <input type="number" class="form-control" id="namBh" name="namBh" value="${sp.namBh}" required>
        </div>
        <div class="mb-3">
            <label for="moTa" class="form-label">Mo Ta</label>
            <input type="text" class="form-control" id="moTa" name="moTa" value="${sp.moTa}" required>
        </div>
        <div class="mb-3">
            <label for="soLuongTon" class="form-label">SL Ton</label>
            <input type="number" class="form-control" id="soLuongTon" name="soLuongTon" value="${sp.soLuongTon}" required>
        </div>
        <div class="mb-3">
            <label for="giaBan" class="form-label">Gia Ban</label>
            <input type="number" class="form-control" id="giaBan" name="giaBan" value="${sp.giaBan}" required>
        </div>
        <div class="mb-3">
            <label for="giaNhap" class="form-label">Gia Nhap</label>
            <input type="number" class="form-control" id="giaNhap" name="giaNhap" value="${sp.giaNhap}" required>
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
