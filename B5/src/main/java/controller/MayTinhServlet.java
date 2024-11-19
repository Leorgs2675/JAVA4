package controller;

import entity.MayTinh;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;
import repository.MayTinhRepository;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = {
        "/may-tinh/hien-thi",
        "/may-tinh/detail",
        "/may-tinh/delete",
        "/may-tinh/view-update"
})
public class MayTinhServlet extends HttpServlet {
    private List<MayTinh> list = new ArrayList<>();
    private MayTinhRepository repo = new MayTinhRepository();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("hien-thi")){
            this.getAll(req,resp);
        }else if (uri.contains("detail")){
            this.detail(req,resp);
        }
        else if (uri.contains("view-update")){
            this.viewUpdate(req,resp);
        }
        else if (uri.contains("delete")){
            this.delete(req,resp);
        }else {

        }
    }

    private void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer ma = Integer.valueOf(req.getParameter("ma"));
        MayTinh mt = repo.getOne(ma);
        repo.delete(mt);
        this.getAll(req,resp);
    }

    private void viewUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer ma = Integer.valueOf(req.getParameter("ma"));
        MayTinh mt = repo.getOne(ma);
        req.setAttribute("mt",mt);
        req.getRequestDispatcher("/view/update.jsp").forward(req,resp);
    }

    private void detail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer ma = Integer.valueOf(req.getParameter("ma"));
        MayTinh mt = repo.getOne(ma);
        req.setAttribute("mt",mt);
        list.clear();
        list = repo.getAll();
        req.setAttribute("list",list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }

    private void getAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        list.clear();
        list = repo.getAll();
        req.setAttribute("list",list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("add")){
            this.add(req,resp);
        }else{
            this.update(req,resp);
        }
    }

    private void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer ma = Integer.valueOf(req.getParameter("ma"));
        String ten = req.getParameter("ten");
        Float gia =Float.valueOf( req.getParameter("gia"));
        String boNho = req.getParameter("boNho");
        String mauSac = req.getParameter("mauSac");
        String hang = req.getParameter("hang");
        String mieuTa = req.getParameter("mieuTa");
        MayTinh mt = MayTinh.builder()
                .ma(ma)
                .ten(ten)
                .gia(gia)
                .boNho(boNho)
                .mauSac(mauSac)
                .hang(hang)
                .mieuTa(mieuTa)
                .build();
        mt.setMa(ma);
        mt.setTen(ten);
        mt.setGia(gia);
        mt.setBoNho(boNho);
        mt.setMauSac(mauSac);
        mt.setHang(hang);
        mt.setMieuTa(mieuTa);
        repo.update(mt);
        this.getAll(req,resp);
    }

    private void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ten = req.getParameter("ten");
        Float gia =Float.valueOf( req.getParameter("gia"));
        String boNho = req.getParameter("boNho");
        String mauSac = req.getParameter("mauSac");
        String hang = req.getParameter("hang");
        String mieuTa = req.getParameter("mieuTa");
        MayTinh mt = MayTinh.builder()
                .ten(ten)
                .gia(gia)
                .boNho(boNho)
                .mauSac(mauSac)
                .hang(hang)
                .mieuTa(mieuTa)
                .build();
        repo.add(mt);
        list.clear();
        list = repo.getAll();
        req.setAttribute("list",list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }
}
