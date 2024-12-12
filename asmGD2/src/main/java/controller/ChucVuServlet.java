package controller;

import entity.ChucVu;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import repository.ChucVuRepository;

@WebServlet(value = {
        "/cv/cvall",
        "/cv/cvdetail",
        "/cv/cvdelete"
})
public class ChucVuServlet extends HttpServlet {
    private List<ChucVu> listcv = new ArrayList<ChucVu>();
    private ChucVuRepository repo = new ChucVuRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("cvall")){
            listcv.clear();
            listcv  = repo.getAll();
            req.setAttribute("listcv", listcv);
            req.getRequestDispatcher("/CV/hien-thi.jsp").forward(req, resp);
        }else if (uri.contains("cvdetail")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            ChucVu sp = repo.findById(id);
            req.setAttribute("sp", sp);
            req.getRequestDispatcher("/CV/update.jsp").forward(req, resp);
        }else if (uri.contains("cvdelete")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            ChucVu sp = repo.findById(id);
            repo.delete(sp);
            listcv.clear();
            listcv  = repo.getAll();
            req.setAttribute("listcv", listcv);
            req.getRequestDispatcher("/CV/hien-thi.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("add")){
            String ma = req.getParameter("ma");
            String ten = req.getParameter("ten");
            ChucVu chucVu = ChucVu.builder()
                    .ma(ma)
                    .ten(ten)
                    .build();
            repo.add(chucVu);
            listcv.clear();
            listcv  = repo.getAll();
            req.setAttribute("listcv", listcv);
            req.getRequestDispatcher("/CV/hien-thi.jsp").forward(req, resp);
        }else if (action.equalsIgnoreCase("update")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            String ma = req.getParameter("ma");
            String ten = req.getParameter("ten");
            ChucVu chucVu = ChucVu.builder()
                    .id(id)
                    .ma(ma)
                    .ten(ten)
                    .build();
            repo.update(chucVu);
            listcv.clear();
            listcv  = repo.getAll();
            req.setAttribute("listcv", listcv);
            req.getRequestDispatcher("/CV/hien-thi.jsp").forward(req, resp);
        }
    }
}
