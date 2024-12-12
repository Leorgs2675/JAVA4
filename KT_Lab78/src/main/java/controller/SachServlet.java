package controller;

import entity.Sach;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import repository.SachRepository;

@WebServlet(value = {
        "/sach/get-all",
        "/sach/delete",
        "/sach/detail"
})
public class SachServlet extends HttpServlet {
    private List<Sach> list = new ArrayList<Sach>();
    private SachRepository repository = new SachRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("get-all")){
//            list.clear();
//            list= repository.getSach();
//            req.setAttribute("list", list);
//            req.getRequestDispatcher("/view/hien-thi.jsp").forward(req, resp);
            int pageNo = 0;
            if (req.getParameter("pageNo") != null){
                pageNo = Integer.parseInt(req.getParameter("pageNo"));
            }
            list.clear();
            list = repository.phanTranghql(pageNo,5);
            long tongsp = repository.getSachCount();
            int TongPage = (int) Math.ceil(tongsp/5);
            req.setAttribute("list", list);
            req.setAttribute("TongPage", TongPage);
            req.setAttribute("pageNo", pageNo);
            req.getRequestDispatcher("/view/hien-thi.jsp").forward(req, resp);

        }else  if (uri.contains("delete")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            Sach sach = repository.getSachById(id);
            repository.delete(sach);
            list.clear();
            list= repository.getSach();
            req.setAttribute("list", list);
            req.getRequestDispatcher("/view/hien-thi.jsp").forward(req, resp);
        }else  if (uri.contains("detail")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            Sach sach = repository.getSachById(id);
            req.setAttribute("sach", sach);
            list.clear();
            list= repository.getSach();
            req.setAttribute("list", list);
            req.getRequestDispatcher("/view/hien-thi.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("update")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            String ten = req.getParameter("ten");
            String ma = req.getParameter("ma");
            Integer soTrang = Integer.parseInt(req.getParameter("soTrang"));
            Float donGia = Float.parseFloat(req.getParameter("donGia"));
            Integer trangThai = Integer.parseInt(req.getParameter("trangThai"));
            Sach sach = Sach.builder()
                    .id(id)
                    .ten(ten)
                    .ma(ma)
                    .soTrang(soTrang)
                    .donGia(donGia)
                    .trangThai(trangThai)
                    .build();
            repository.update(sach);
            list.clear();
            list= repository.getSach();
            req.setAttribute("list", list);
            req.getRequestDispatcher("/view/hien-thi.jsp").forward(req, resp);
        }
    }
}
