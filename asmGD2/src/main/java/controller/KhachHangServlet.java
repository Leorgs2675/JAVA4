package controller;

import entity.KhachHang;
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
import repository.KhachHangRepository;

@WebServlet(value = {
        "/kh/khall",
        "/kh/khdetail",
        "/kh/khdelete"
})
public class KhachHangServlet extends HttpServlet {
    private List<KhachHang> listkh = new ArrayList<KhachHang>();
    private KhachHangRepository repo = new KhachHangRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("khall")){
            listkh.clear();
            listkh  = repo.getAll();
            req.setAttribute("listkh", listkh);
            req.getRequestDispatcher("/KH/hien-thi.jsp").forward(req, resp);
        }else if (uri.contains("khdetail")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            KhachHang sp = repo.findById(id);
            req.setAttribute("sp", sp);
            req.getRequestDispatcher("/KH/update.jsp").forward(req, resp);
        }else if (uri.contains("khdelete")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            KhachHang sp = repo.findById(id);
            repo.delete(sp);
            listkh.clear();
            listkh  = repo.getAll();
            req.setAttribute("listkh", listkh);
            req.getRequestDispatcher("/KH/hien-thi.jsp").forward(req, resp);
        }
    }
    @SneakyThrows
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("add")){
            KhachHang KhachHang = new KhachHang();
            BeanUtils.populate(KhachHang, req.getParameterMap());
            repo.add(KhachHang);
            listkh.clear();
            listkh  = repo.getAll();
            req.setAttribute("listkh", listkh);
            req.getRequestDispatcher("/KH/hien-thi.jsp").forward(req, resp);
        }else if (action.equalsIgnoreCase("update")){
            KhachHang KhachHang = new KhachHang();
            BeanUtils.populate(KhachHang, req.getParameterMap());
            repo.update(KhachHang);
            listkh.clear();
            listkh  = repo.getAll();
            req.setAttribute("listkh", listkh);
            req.getRequestDispatcher("/KH/hien-thi.jsp").forward(req, resp);
        }
    }
}
