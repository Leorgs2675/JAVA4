package controller;

import entity.Nsx;
import entity.SanPham;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import repository.NSXRepository;
@WebServlet(value = {
        "/nsx/nsxall",
        "/nsx/nsxdetail",
        "/nsx/nsxdelete"
})
public class NSXServlet extends HttpServlet {
    private List<Nsx> listnsx = new ArrayList<Nsx>();
    private NSXRepository repo = new NSXRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("nsxall")){
            listnsx.clear();
            listnsx  = repo.getAll();
            req.setAttribute("listnsx", listnsx);
            req.getRequestDispatcher("/NSX/hien-thi.jsp").forward(req, resp);
        }else if (uri.contains("nsxdetail")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            Nsx sp = repo.findById(id);
            req.setAttribute("sp", sp);
            req.getRequestDispatcher("/NSX/update.jsp").forward(req, resp);
        }else if (uri.contains("nsxdelete")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            Nsx sp = repo.findById(id);
            repo.delete(sp);
            listnsx.clear();
            listnsx  = repo.getAll();
            req.setAttribute("listnsx", listnsx);
            req.getRequestDispatcher("/NSX/hien-thi.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("add")){
            String ma = req.getParameter("ma");
            String ten = req.getParameter("ten");
            Nsx nsx = Nsx.builder()
                    .ma(ma)
                    .ten(ten)
                    .build();
            repo.save(nsx);
            listnsx.clear();
            listnsx  = repo.getAll();
            req.setAttribute("listnsx", listnsx);
            req.getRequestDispatcher("/NSX/hien-thi.jsp").forward(req, resp);
        }else if (action.equalsIgnoreCase("update")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            String ma = req.getParameter("ma");
            String ten = req.getParameter("ten");
            Nsx nsx = Nsx.builder()
                    .id(id)
                    .ma(ma)
                    .ten(ten)
                    .build();
            repo.update(nsx);
            listnsx.clear();
            listnsx  = repo.getAll();
            req.setAttribute("listnsx", listnsx);
            req.getRequestDispatcher("/NSX/hien-thi.jsp").forward(req, resp);
        }
    }
}
