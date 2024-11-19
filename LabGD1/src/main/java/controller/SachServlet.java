package controller;

import entity.Sach;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.SneakyThrows;
import org.apache.commons.beanutils.BeanUtils;
import repository.SachRepository;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = {
        "/sach/hien-thi",
        "/sach/detail",
        "/sach/delete",
        "/sach/viewUpdate",
        "/sach/search",

})
public class SachServlet extends HttpServlet {
    private List<Sach> list = new ArrayList<>();
    private SachRepository repo = new SachRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("hien-thi")){
            this.getAll(req,resp);
        }else if (uri.contains("detail")){
            this.detail(req,resp);
        }
        else if (uri.contains("viewUpdate")){
            this.viewUpdate(req,resp);
        }
        else if (uri.contains("search")){
            this.search(req,resp);
        }else {
            this.delete(req,resp);
        }

    }

    private void search(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ten = req.getParameter("timTen");
        Integer tgId = Integer.valueOf(req.getParameter("timCombo"));
        List<Sach> timSach = repo.timKiem(ten,tgId);
        list.clear();
        list = timSach;
        req.setAttribute("list",list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }

    private void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        Sach s = repo.getOne(id);
        repo.delete(s);
        this.getAll(req,resp);
    }

    private void viewUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        Sach s = repo.getOne(id);
        req.setAttribute("s",s);
        req.getRequestDispatcher("/view/update.jsp").forward(req,resp);
    }

    private void detail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        Sach s = repo.getOne(id);
        req.setAttribute("s",s);
        req.getRequestDispatcher("/view/detail.jsp").forward(req,resp);
    }

    private void getAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = 0;
        if (req.getParameter("page") != null) {
            pageNo = Integer.parseInt(req.getParameter("page"));
        }
        list.clear();
        list = repo.phanTrangHql(pageNo,5);
        req.setAttribute("pageNo",pageNo);
        req.setAttribute("list",list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("add")){
            this.add(req,resp);
        }else {
            this.update(req,resp);
        }
    }
    @SneakyThrows
    private void add(HttpServletRequest req, HttpServletResponse resp) {
        Sach s = new Sach();
        BeanUtils.populate(s,req.getParameterMap());
        repo.add(s);
        this.getAll(req,resp);
    }
    @SneakyThrows
    private void update(HttpServletRequest req, HttpServletResponse resp) {
        Sach s = new Sach();
        BeanUtils.populate(s,req.getParameterMap());
        repo.update(s);
        this.getAll(req,resp);
    }
}
