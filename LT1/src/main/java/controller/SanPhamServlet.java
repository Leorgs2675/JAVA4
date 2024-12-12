package controller;

import entity.SanPham;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import repository.SanPhamRepository;

@WebServlet(value = {
        "/san-pham/hien-thi",
        "/san-pham/detail"
})
public class SanPhamServlet extends HttpServlet {
    private List<SanPham> list = new ArrayList<SanPham>();
    private SanPhamRepository repo = new SanPhamRepository();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("hien-thi")) {
            this.getAll(req,resp);
        }else if (uri.contains("detail")) {
            this.detail(req,resp);
        }
    }

    private void detail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        SanPham sanPham = repo.getById(id);
        req.setAttribute("s", sanPham);
        this.getAll(req,resp);
    }

    private void getAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        list.clear();
//        list = repo.getAll();
//        req.setAttribute("list", list);
//        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
        int pageNo = 0;
        if (req.getParameter("pageNo") != null) {
            pageNo = Integer.parseInt(req.getParameter("pageNo"));
        }
        list.clear();
        list = repo.phanTranghql(pageNo,5);
        Long tongsp = repo.countProduct();
        int tongPage = (int) Math.ceil(tongsp.doubleValue()/5);
        req.setAttribute("tongPage", tongPage);
        req.setAttribute("list", list);
        req.setAttribute("pageNo", pageNo);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("add")){
            String ma = req.getParameter("ma");
            String ten = req.getParameter("ten");
            SanPham sanPham = SanPham.builder()
                    .ma(ma)
                    .ten(ten)
                    .build();
            repo.save(sanPham);
            this.getAll(req,resp);
        }
    }
}
