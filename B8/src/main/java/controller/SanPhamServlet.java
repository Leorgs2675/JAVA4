package controller;

import entity.DonViTinh;
import entity.SanPham;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import repository.SanPhamRepository;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@WebServlet(value = {
        "/chi-tiet-san-pham/hien-thi",
        "/chi-tiet-san-pham/delete"
})
public class SanPhamServlet extends HttpServlet {
    private List<SanPham> list = new ArrayList<>();
    private SanPhamRepository repo = new SanPhamRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("hien-thi")){
            this.getAll(req,resp);
        }else {
            this.delete(req,resp);
        }
    }

    private void getAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        list.clear();
//        list=repo.getAll();
//        req.setAttribute("list",list);
//        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
        int pageNo = 0;
        if (req.getParameter("page")!=null){
            pageNo =Integer.valueOf( req.getParameter("page"));
        }
        list.clear();
        list = repo.phanTrang(pageNo,5);
        Long tongSp = repo.countProducts();
        int TongPage = (int) Math.ceil(tongSp.doubleValue()/5);
        req.setAttribute("list",list);
        req.setAttribute("pageNo",pageNo);
        req.setAttribute("TongPage",TongPage);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }

    private void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer idCTSP = Integer.valueOf(req.getParameter("idCTSP"));
        SanPham sp = repo.getOne(idCTSP);
        repo.delete(sp);
        this.getAll(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("add")){
            this.add(req,resp);
        }
    }

    private void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer idDonViTinh = Integer.valueOf(req.getParameter("idDonViTinh"));
        Integer soLuongTon = Integer.valueOf(req.getParameter("soLuongTon"));
        Float donGia = Float.valueOf(req.getParameter("donGia"));
        String ghiChu = req.getParameter("ghiChu");
        SanPham sp = SanPham.builder()
                .idDonViTinh(DonViTinh.builder().idDonViTinh(idDonViTinh).build())
                .soLuongTon(soLuongTon)
                .donGia(donGia)
                .ghiChu(ghiChu)
                .build();
        repo.add(sp);
//        repo.update(sp);
//        this.getAll(req,resp);
        resp.sendRedirect("/chi-tiet-san-pham/hien-thi");
    }
}
