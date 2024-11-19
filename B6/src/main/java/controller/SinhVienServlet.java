package controller;

import entity.Lop;
import entity.SinhVien;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.SneakyThrows;
import org.apache.commons.beanutils.BeanUtils;
import repository.SinhVienRepository;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = {
        "/sinh-vien/hien-thi",
        "/sinh-vien/detail",
        "/sinh-vien/delete",
        "/sinh-vien/view-update",
        "/sinh-vien/search",
        "/sinh-vien/top3"
})
public class SinhVienServlet extends HttpServlet {
    private List<SinhVien> list = new ArrayList<>();
    private SinhVienRepository repo = new SinhVienRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();


        if (uri.contains("hien-thi")){
            this.getAll(req,resp);
        }else if (uri.contains("detail")){
            this.detail(req,resp);
        }else if (uri.contains("view-update")){
            this.viewUpdate(req,resp);
        }else if (uri.contains("delete")){
            this.delete(req,resp);
        }else if (uri.contains("search")){
            this.search(req,resp);
        }else{
            this.filter(req,resp);
        }
    }

    private void filter(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<SinhVien> top3 = repo.timTop3();
        list.clear();
        list = top3;
        req.setAttribute("list",list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }

    private void search(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long tuoi = Long.valueOf(req.getParameter("timTuoi"));
        int lopId = Integer.valueOf(req.getParameter("timCombo"));
        List<SinhVien> timKiem = repo.timKiem(tuoi,lopId);
        list.clear();
        list = timKiem;
        req.setAttribute("list",list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }

    private void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.valueOf(req.getParameter("id"));
        SinhVien gv = repo.getOne(id);
        repo.delete(gv);
       this.getAll(req,resp);
    }

    private void viewUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.valueOf(req.getParameter("id"));
        SinhVien gv = repo.getOne(id);
        req.setAttribute("gv",gv);
        req.getRequestDispatcher("/view/update.jsp").forward(req,resp);
    }

    private void detail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.valueOf(req.getParameter("id"));
        SinhVien gv = repo.getOne(id);
        req.setAttribute("s",gv);
        req.getRequestDispatcher("/view/detail.jsp").forward(req,resp);
    }

    private void getAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        list.clear();
//        list = repo.getAll();
//        req.setAttribute("list",list);
//        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);


        int pageNo = 0;
        if (req.getParameter("page") != null) {
            pageNo = Integer.parseInt(req.getParameter("page"));
        }
        list.clear();
        list = repo.phanTrangHql(pageNo,10);
        req.setAttribute("pageNo",pageNo);
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
//        SinhVien gv = new SinhVien();
//        BeanUtils.populate(gv, req.getParameterMap());
        String ma = req.getParameter("ma");
        Integer id =Integer.valueOf( req.getParameter("id"));
        String ten = req.getParameter("ten");
        String tuoi = req.getParameter("tuoi");
        String gioiTinh = req.getParameter("gioiTinh");
        String diaChi = req.getParameter("diaChi");
        String lopId = req.getParameter("lopId");
        SinhVien sv = new SinhVien(id,ma,ten,Long.valueOf(tuoi),diaChi,Boolean.valueOf(gioiTinh),Lop.builder().LID(Integer.valueOf(lopId)).build());
        repo.update(sv);
        this.getAll(req,resp);
    }
    @SneakyThrows
    private void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         String ma = req.getParameter("ma");
//         String id = req.getParameter("id");
         String ten = req.getParameter("ten");
         String tuoi = req.getParameter("tuoi");
         String gioiTinh = req.getParameter("gioiTinh");
         String diaChi = req.getParameter("diaChi");
         String lopId = req.getParameter("lopId");
         SinhVien sv =SinhVien.builder()
                 .ma(ma)
                 .ten(ten)
                 .tuoi(Long.valueOf(tuoi))
                 .diaChi(diaChi)
                 .gioiTinh(Boolean.valueOf(gioiTinh))
                 .lopId(Lop.builder().LID(Integer.valueOf(lopId)).build())
                 .build();
//        SinhVien gv = new SinhVien();
//        BeanUtils.populate(gv, req.getParameterMap());
        repo.add(sv);
        this.getAll(req,resp);
    }
}
