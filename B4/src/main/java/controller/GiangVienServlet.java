package controller;

import entity.GiangVien;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.SneakyThrows;
import org.apache.commons.beanutils.BeanUtils;
import repository.GiangVienRepository;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = {
        "/giang-vien/hien-thi",
        "/giang-vien/search",
        "/giang-vien/giang-vien-nu",
        "/giang-vien/remove",
        "/giang-vien/detail",
        "/giang-vien/view-update"
})
public class GiangVienServlet extends HttpServlet {
    private List<GiangVien> list = new ArrayList<>();
    private GiangVienRepository repo = new GiangVienRepository();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("hien-thi")){
            this.getAll(req,resp);
        }else if (uri.contains("detail")){
            this.detail(req,resp);
        }else if (uri.contains("view-update")){
            this.viewUpdate(req,resp);
        }else if (uri.contains("remove")){
            this.delete(req,resp);
        }else if (uri.contains("search")){
            this.search(req,resp);
        }else{
            this.filter(req,resp);
        }
    }

    private void viewUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id =Long.parseLong(req.getParameter("gvID"));
        GiangVien gv = repo.getOne(id);
        req.setAttribute("gv",gv);
        req.getRequestDispatcher("/view/update.jsp").forward(req,resp);
    }

    private void filter(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String timGVNu = req.getParameter("timGVNu");
        List<GiangVien> gvNu = repo.timGVNu(Boolean.valueOf(timGVNu));
        list.clear();
        list = gvNu;
        req.setAttribute("list",list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }

    private void search(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String tim = req.getParameter("timTen");
        List<GiangVien> tklist = repo.timKiem(tim);
        list.clear();
        list = tklist;
        req.setAttribute("list",list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }

    private void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id =Long.parseLong(req.getParameter("gvID"));
        GiangVien gv = repo.getOne(id);
        repo.delete(gv);
        list.clear();
        list = repo.getAll();
        req.setAttribute("list",list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }

    private void detail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id =Long.parseLong(req.getParameter("gvID"));
        GiangVien gv = repo.getOne(id);
        req.setAttribute("gv",gv);
        req.getRequestDispatcher("/view/detail.jsp").forward(req,resp);

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
    @SneakyThrows
    private void update(HttpServletRequest req, HttpServletResponse resp) {
        GiangVien gv = new GiangVien();
        BeanUtils.populate(gv, req.getParameterMap());
        repo.update(gv);
        list.clear();
        list = repo.getAll();
        req.setAttribute("list",list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }
    @SneakyThrows
    private void add(HttpServletRequest req, HttpServletResponse resp) {
        GiangVien gv = new GiangVien();
        BeanUtils.populate(gv, req.getParameterMap());
        repo.update(gv);
        list.clear();
        list = repo.getAll();
        req.setAttribute("list",list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }
}
