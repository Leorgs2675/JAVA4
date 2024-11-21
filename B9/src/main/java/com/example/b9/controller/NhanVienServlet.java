package com.example.b9.controller;

import com.example.b9.entity.CoSoLamViec;
import com.example.b9.entity.NhanVien;
import com.example.b9.repository.NhanVienRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import lombok.SneakyThrows;
import org.apache.commons.beanutils.BeanUtils;

@WebServlet(value = {
        "/nhan-vien/hien-thi",
        "/nhan-vien/detail",
        "/nhan-vien/delete",
        "/nhan-vien/view-update"
})
public class NhanVienServlet extends HttpServlet {
    private List<NhanVien> list = new ArrayList<NhanVien>();
    private NhanVienRepository repo = new NhanVienRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("hien-thi")){
            this.getAll(req,resp);
        }else if (uri.contains("detail")){
            this.detail(req,resp);
        } else if (uri.contains("delete")) {
            this.delete(req,resp);
        }else if (uri.contains("view-update")){
            this.viewUpdate(req,resp);
        }else {
            this.getAll(req,resp);
        }
    }

    private void viewUpdate(HttpServletRequest req, HttpServletResponse resp) {
    }

    private void delete(HttpServletRequest req, HttpServletResponse resp) {
    }

    private void detail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("id"));
        NhanVien nv = repo.getOne(id);
        req.setAttribute("nv", nv);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }

    private void getAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        list.clear();
        list = repo.getAll();
        req.setAttribute("list", list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equals("add")) {
            this.add(req,resp);
        }
    }
//    @SneakyThrows
    private void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        NhanVien nv = new NhanVien();
//        BeanUtils.populate(nv, req.getParameterMap());
        String name = req.getParameter("ten");
        Integer age = Integer.valueOf(req.getParameter("tuoi"));
        String address = req.getParameter("diaChi");
        Boolean gioiTinh = Boolean.valueOf(req.getParameter("gioiTinh"));
        Long idCS = Long.valueOf(req.getParameter("coSoLamViecId"));
        NhanVien nv = NhanVien.builder()
                .ten(name)
                .tuoi(age)
                .gioiTinh(gioiTinh)
                .diaChi(address)
                .coSoLamViecId(CoSoLamViec.builder().id(idCS).build())
                .build();
        repo.save(nv);
        this.getAll(req,resp);
    }
}
