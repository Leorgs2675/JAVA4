package controller;

import entity.NhanVien;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import repository.NhanVienRepository;

@WebServlet(value = {
        "/nv/nvall",
        "/nv/nvdetail",
        "/nv/nvdelete"
})
public class NhanVienServlet extends HttpServlet {
    private List<NhanVien> listnv = new ArrayList<NhanVien>();
    private NhanVienRepository repo = new NhanVienRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("nvall")){
            listnv.clear();
            listnv  = repo.getAll();
            req.setAttribute("listnv", listnv);
            req.getRequestDispatcher("/NV/hien-thi.jsp").forward(req, resp);
        }else if (uri.contains("nvdetail")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            NhanVien sp = repo.findById(id);
            req.setAttribute("sp", sp);
            req.getRequestDispatcher("/NV/update.jsp").forward(req, resp);
        }else if (uri.contains("nvdelete")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            NhanVien sp = repo.findById(id);
            repo.delete(sp);
            listnv.clear();
            listnv  = repo.getAll();
            req.setAttribute("listnv", listnv);
            req.getRequestDispatcher("/NV/hien-thi.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("add")){
            String ma = req.getParameter("ma");
            String ten = req.getParameter("ten");
            String tenDem = req.getParameter("tenDem");
            String ho = req.getParameter("ho");
            String gioiTinh = req.getParameter("gioiTinh");
            String ngaySinh = req.getParameter("ngaySinh");
            String diaChi = req.getParameter("diaChi");
            String sdt = req.getParameter("sdt");
            String matKhau = req.getParameter("matKhau");
            Integer idCh = Integer.parseInt(req.getParameter("idCh"));
            Integer idCv = Integer.parseInt(req.getParameter("idCv"));
            Integer trangThai = Integer.parseInt(req.getParameter("trangThai"));
            NhanVien nhanVien = NhanVien.builder()
                    .ma(ma)
                    .ten(ten)
                    .tenDem(tenDem)
                    .ho(ho)
                    .gioiTinh(gioiTinh)
                    .ngaySinh(ngaySinh)
                    .diaChi(diaChi)
                    .sdt(sdt)
                    .matKhau(matKhau)
                    .idCh(idCh)
                    .idCv(idCv)
                    .trangThai(trangThai)
                    .build();
            repo.add(nhanVien);
            listnv.clear();
            listnv  = repo.getAll();
            req.setAttribute("listnv", listnv);
            req.getRequestDispatcher("/NV/hien-thi.jsp").forward(req, resp);
        }else if (action.equalsIgnoreCase("update")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            String ma = req.getParameter("ma");
            String ten = req.getParameter("ten");
            String tenDem = req.getParameter("tenDem");
            String ho = req.getParameter("ho");
            String gioiTinh = req.getParameter("gioiTinh");
            String ngaySinh = req.getParameter("ngaySinh");
            String diaChi = req.getParameter("diaChi");
            String sdt = req.getParameter("sdt");
            String matKhau = req.getParameter("matKhau");
            Integer idCh = Integer.parseInt(req.getParameter("idCh"));
            Integer idCv = Integer.parseInt(req.getParameter("idCv"));
            Integer trangThai = Integer.parseInt(req.getParameter("trangThai"));
            NhanVien nhanVien = NhanVien.builder()
                    .id(id)
                    .ma(ma)
                    .ten(ten)
                    .tenDem(tenDem)
                    .ho(ho)
                    .gioiTinh(gioiTinh)
                    .ngaySinh(ngaySinh)
                    .diaChi(diaChi)
                    .sdt(sdt)
                    .matKhau(matKhau)
                    .idCh(idCh)
                    .idCv(idCv)
                    .trangThai(trangThai)
                    .build();
            repo.update(nhanVien);
            listnv.clear();
            listnv  = repo.getAll();
            req.setAttribute("listnv", listnv);
            req.getRequestDispatcher("/NV/hien-thi.jsp").forward(req, resp);
        }
    }
}
