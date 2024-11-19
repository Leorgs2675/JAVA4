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
        "/may-tinh /add",
        "/may-tinh/search",
        "/may-tinh/remove"
})
public class MayTinhServlet extends HttpServlet {
    private List<MayTinh> list = new ArrayList<>();
    private MayTinhRepository repo = new MayTinhRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("hien-thi")){
            this.getAll(req,resp);
        }else if (uri.contains("remove")){
            this.delete(req,resp);
        }
    }

    private void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer ma =Integer.valueOf( req.getParameter("ma"));
        MayTinh m = repo.getOne(ma);
        repo.delete(m);
        this.getAll(req,resp);
    }

    private void getAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        list.clear();
//        list = repo.getAll();
//        req.setAttribute("list",list);
//        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
        int pageNo = 0;
        if (req.getParameter("page")!=null){
            pageNo =Integer.valueOf( req.getParameter("page"));
        }

        list = repo.phanTrang(pageNo,5);
        req.setAttribute("pageNo",pageNo);
        req.setAttribute("list",list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("add")){
            this.add(req,resp);
        }
    }

    private void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ma = req.getParameter("ma");
        String ten = req.getParameter("ten");
        Float gia = Float.valueOf( req.getParameter("gia"));
        String boNho = req.getParameter("boNho");
        String mauSac = req.getParameter("mauSac");
//        req.setAttribute("ma",ma);
//        req.setAttribute("ten",ten);
//        req.setAttribute("gia",gia);
//        req.setAttribute("boNho",boNho);
//        req.setAttribute("mauSac",mauSac);
        MayTinh m = MayTinh.builder()
                .ma(ma)
                .ten(ten)
                .gia(gia)
                .boNho(boNho)
                .mauSac(mauSac)
                .build();
        repo.add(m);
        this.getAll(req,resp);
    }
}
