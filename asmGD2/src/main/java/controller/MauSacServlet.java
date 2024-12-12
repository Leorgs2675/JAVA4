package controller;

import entity.MauSac;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import repository.MauSacRepository;

@WebServlet(value = {
        "/ms/msall",
        "/ms/msdetail",
        "/ms/msdelete"
})
public class MauSacServlet extends HttpServlet {
    private List<MauSac> listmsx = new ArrayList<MauSac>();
    private MauSacRepository repo = new MauSacRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("msall")){
            listmsx.clear();
            listmsx  = repo.getAll();
            req.setAttribute("listmsx", listmsx);
            req.getRequestDispatcher("/MS/hien-thi.jsp").forward(req, resp);
        }else if (uri.contains("msdetail")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            MauSac sp = repo.findById(id);
            req.setAttribute("sp", sp);
            req.getRequestDispatcher("/MS/update.jsp").forward(req, resp);
        }else if (uri.contains("msdelete")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            MauSac sp = repo.findById(id);
            repo.delete(sp);
            listmsx.clear();
            listmsx  = repo.getAll();
            req.setAttribute("listmsx", listmsx);
            req.getRequestDispatcher("/MS/hien-thi.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("add")){
            String ma = req.getParameter("ma");
            String ten = req.getParameter("ten");
            MauSac mauSac = MauSac.builder()
                    .ma(ma)
                    .ten(ten)
                    .build();
            repo.add(mauSac);
            listmsx.clear();
            listmsx  = repo.getAll();
            req.setAttribute("listmsx", listmsx);
            req.getRequestDispatcher("/MS/hien-thi.jsp").forward(req, resp);
        }else if (action.equalsIgnoreCase("update")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            String ma = req.getParameter("ma");
            String ten = req.getParameter("ten");
            MauSac mauSac = MauSac.builder()
                    .id(id)
                    .ma(ma)
                    .ten(ten)
                    .build();
            repo.update(mauSac);
            listmsx.clear();
            listmsx  = repo.getAll();
            req.setAttribute("listmsx", listmsx);
            req.getRequestDispatcher("/MS/hien-thi.jsp").forward(req, resp);
        }
    }
}
