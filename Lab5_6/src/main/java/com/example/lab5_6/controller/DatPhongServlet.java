package com.example.lab5_6.controller;

import com.example.lab5_6.entity.DatPhong;
import com.example.lab5_6.repository.DatPhongRepository;
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
        "/dat-phong/hien-thi",
        "/dat-phong/view-update",
        "/dat-phong/search",
        "/dat-phong/delete"
})
public class DatPhongServlet extends HttpServlet {
    private List<DatPhong> list = new ArrayList<>();
    private DatPhongRepository repo = new DatPhongRepository();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("hien-thi")) {
            this.getAll(req,resp);
        }else if (uri.contains("view-update")) {
            this.viewUpdate(req,resp);
        }else if (uri.contains("search")) {

        }else if (uri.contains("delete")) {
            this.delete(req,resp);
        }
    }

    private void delete(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        DatPhong dp = repo.findById(id);
        repo.delete(dp);
        resp.sendRedirect("/dat-phong/hien-thi");
    }

    private void viewUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        DatPhong dp = repo.findById(id);
        req.setAttribute("dp", dp);
        req.getRequestDispatcher("/view/update.jsp").forward(req,resp);
    }

    private void getAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        list.clear();
        list = repo.findAll();
        req.setAttribute("list", list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }
    @SneakyThrows
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("Update")) {
            Integer id = Integer.parseInt(req.getParameter("id"));
            String ma = req.getParameter("ma");
            String ten = req.getParameter("ten");
            String ngayTao = req.getParameter("ngayTao");
            Integer trangThai = Integer.parseInt(req.getParameter("trangThai"));
            DatPhong dp = DatPhong.builder()
                    .id(id)
                    .ma(ma)
                    .ten(ten)
                    .ngayTao(ngayTao)
                    .trangThai(trangThai)
                    .build();
            repo.update(dp);
            list.clear();
            list = repo.findAll();
            req.setAttribute("list", list);
            req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
        }
    }
}
