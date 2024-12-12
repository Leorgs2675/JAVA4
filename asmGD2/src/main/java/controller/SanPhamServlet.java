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
import lombok.SneakyThrows;
import org.apache.commons.beanutils.BeanUtils;
import repository.SanPhamRepository;

@WebServlet(value = {
        "/sp/all",
        "/sp/detail",
        "/sp/delete"
})
public class SanPhamServlet extends HttpServlet {
    private List<SanPham> list = new ArrayList<SanPham>();
    private SanPhamRepository sanPhamRepository = new SanPhamRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("all")){
            list.clear();
            list  = sanPhamRepository.getAllSanPham();
            req.setAttribute("list", list);
            req.getRequestDispatcher("/SanPham/hien-thi.jsp").forward(req, resp);
        }else if (uri.contains("detail")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            SanPham sp = sanPhamRepository.findById(id);
            req.setAttribute("sp", sp);
            req.getRequestDispatcher("/SanPham/update.jsp").forward(req, resp);
        }else if (uri.contains("delete")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            SanPham sp = sanPhamRepository.findById(id);
            sanPhamRepository.delete(sp);
            list.clear();
            list  = sanPhamRepository.getAllSanPham();
            req.setAttribute("list", list);
            req.getRequestDispatcher("/SanPham/hien-thi.jsp").forward(req, resp);
        }
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
            sanPhamRepository.save(sanPham);
            list.clear();
            list  = sanPhamRepository.getAllSanPham();
            req.setAttribute("list", list);
            req.getRequestDispatcher("/SanPham/hien-thi.jsp").forward(req, resp);
        }else if (action.equalsIgnoreCase("update")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            String ma = req.getParameter("ma");
            String ten = req.getParameter("ten");
            SanPham sanPham = SanPham.builder()
                    .id(id)
                    .ma(ma)
                    .ten(ten)
                    .build();
            sanPhamRepository.update(sanPham);
            list.clear();
            list  = sanPhamRepository.getAllSanPham();
            req.setAttribute("list", list);
            req.getRequestDispatcher("/SanPham/hien-thi.jsp").forward(req, resp);
        }
    }
}
