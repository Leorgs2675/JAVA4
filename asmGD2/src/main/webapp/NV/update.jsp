<%@ page import="repository.NhanVienRepository" %>
<%@ page import="entity.CuaHang" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.ChucVu" %>
<%@ page import="entity.NhanVien" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/30/2024
  Time: 12:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update NhanVien</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="card shadow p-4">
        <h2 class="text-center mb-4">Update NhanVien</h2>
        <%
            NhanVienRepository repo = new NhanVienRepository();
            List<CuaHang> get = repo.getCh();
            List<CuaHang> data = new ArrayList<>();
            List<ChucVu> getCv = repo.getCv();
            List<ChucVu> dataCv = new ArrayList<>();
            try {
                data.addAll(get);
                dataCv.addAll(getCv);
            } catch (Exception e) {
                // Handle exception
            }
            NhanVien nv = (NhanVien) request.getAttribute("sp");
            Integer idCh = nv.getIdCh();
            Integer idCv = nv.getIdCv();
            String gioiTinh = nv.getGioiTinh();
        %>
        <form action="/nv/nvall" method="post" class="needs-validation" novalidate>
            <input type="hidden" name="id" value="${sp.id}">

            <div class="mb-3">
                <label for="ma" class="form-label">Mã</label>
                <input type="text" class="form-control" id="ma" name="ma" value="${sp.ma}" required>
            </div>

            <div class="mb-3">
                <label for="ten" class="form-label">Tên</label>
                <input type="text" class="form-control" id="ten" name="ten" value="${sp.ten}" required>
            </div>

            <div class="mb-3">
                <label for="tenDem" class="form-label">Tên Đệm</label>
                <input type="text" class="form-control" id="tenDem" name="tenDem" value="${sp.tenDem}" required>
            </div>

            <div class="mb-3">
                <label for="ho" class="form-label">Họ</label>
                <input type="text" class="form-control" id="ho" name="ho" value="${sp.ho}" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Giới Tính</label><br>
                <div class="form-check form-check-inline">
                    <input type="radio" class="form-check-input" id="nam" name="gioiTinh" value="Nam" <%= gioiTinh.equalsIgnoreCase("Nam") ? "checked" : "" %>>
                    <label class="form-check-label" for="nam">Nam</label>
                </div>
                <div class="form-check form-check-inline">
                    <input type="radio" class="form-check-input" id="nu" name="gioiTinh" value="Nu" <%= gioiTinh.equalsIgnoreCase("Nu") ? "checked" : "" %>>
                    <label class="form-check-label" for="nu">Nữ</label>
                </div>
            </div>

            <div class="mb-3">
                <label for="ngaySinh" class="form-label">Ngày Sinh</label>
                <input type="date" class="form-control" id="ngaySinh" name="ngaySinh" value="${sp.ngaySinh}" required>
            </div>

            <div class="mb-3">
                <label for="diaChi" class="form-label">Địa Chỉ</label>
                <input type="text" class="form-control" id="diaChi" name="diaChi" value="${sp.diaChi}" required>
            </div>

            <div class="mb-3">
                <label for="sdt" class="form-label">SĐT</label>
                <input type="number" class="form-control" id="sdt" name="sdt" value="${sp.sdt}" required>
            </div>

            <div class="mb-3">
                <label for="matKhau" class="form-label">Mật Khẩu</label>
                <input type="password" class="form-control" id="matKhau" name="matKhau" value="${sp.matKhau}" required>
            </div>

            <div class="mb-3">
                <label for="trangThai" class="form-label">Trạng Thái</label>
                <input type="number" class="form-control" id="trangThai" name="trangThai" value="${sp.trangThai}" required>
            </div>

            <div class="mb-3">
                <label for="idCh" class="form-label">Cửa Hàng</label>
                <select class="form-select" id="idCh" name="idCh">
                    <%
                        for (CuaHang s : data) {
                    %>
                    <option value="<%= s.getId() %>" <%= s.getId() == idCh ? "selected" : "" %>>
                        <%= s.getTen() %>
                    </option>
                    <%
                        }
                    %>
                </select>
            </div>

            <div class="mb-3">
                <label for="idCv" class="form-label">Chức Vụ</label>
                <select class="form-select" id="idCv" name="idCv">
                    <%
                        for (ChucVu n : dataCv) {
                    %>
                    <option value="<%= n.getId() %>" <%= n.getId() == idCv ? "selected" : "" %>>
                        <%= n.getTen() %>
                    </option>
                    <%
                        }
                    %>
                </select>
            </div>

            <button type="submit" class="btn btn-primary w-100" name="action" value="update">Cập Nhật</button>
        </form>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
