package controller;

import entity.ChiTietSp;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import repository.ChiTietSpRepository;


@WebServlet(value = {
        "/ct/ctall",
        "/ct/ctdetail",
        "/ct/ctdelete"
})
public class ChiTietSpServlet extends HttpServlet {
    private List<ChiTietSp> listct = new ArrayList<ChiTietSp>();
    private ChiTietSpRepository repo = new ChiTietSpRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("ctall")){
            listct.clear();
            listct  = repo.getAll();
            req.setAttribute("listct", listct);
            req.getRequestDispatcher("/CTSP/hien-thi.jsp").forward(req, resp);
        }else if (uri.contains("ctdetail")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            ChiTietSp sp = repo.findById(id);
            req.setAttribute("sp", sp);
            req.getRequestDispatcher("/CTSP/update.jsp").forward(req, resp);
        }else if (uri.contains("ctdelete")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            ChiTietSp sp = repo.findById(id);
            repo.delete(sp);
            listct.clear();
            listct  = repo.getAll();
            req.setAttribute("listct", listct);
            req.getRequestDispatcher("/CTSP/hien-thi.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("add")){
            String moTa = req.getParameter("moTa");
            Integer idSp = Integer.parseInt(req.getParameter("idSp"));
            Integer idNsx = Integer.parseInt(req.getParameter("idNsx"));
            Integer idMauSac = Integer.parseInt(req.getParameter("idMauSac"));
            Integer idDongSp = Integer.parseInt(req.getParameter("idDongSp"));
            Integer namBh = Integer.parseInt(req.getParameter("namBh"));
            Integer soLuongTon = Integer.parseInt(req.getParameter("soLuongTon"));
            Float giaNhap = Float.parseFloat(req.getParameter("giaNhap"));
            Float giaBan = Float.parseFloat(req.getParameter("giaBan"));
            ChiTietSp chiTietSp = ChiTietSp.builder()
                    .idSp(idSp)
                    .idNsx(idNsx)
                    .idMauSac(idMauSac)
                    .idDongSp(idDongSp)
                    .namBh(namBh)
                    .moTa(moTa)
                    .soLuongTon(soLuongTon)
                    .giaNhap(giaNhap)
                    .giaBan(giaBan)
                    .build();
            repo.add(chiTietSp);
            listct.clear();
            listct  = repo.getAll();
            req.setAttribute("listct", listct);
            req.getRequestDispatcher("/CTSP/hien-thi.jsp").forward(req, resp);
        }else if (action.equalsIgnoreCase("update")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            String moTa = req.getParameter("moTa");
            Integer idSp = Integer.parseInt(req.getParameter("idSp"));
            Integer idNsx = Integer.parseInt(req.getParameter("idNsx"));
            Integer idMauSac = Integer.parseInt(req.getParameter("idMauSac"));
            Integer idDongSp = Integer.parseInt(req.getParameter("idDongSp"));
            Integer namBh = Integer.parseInt(req.getParameter("namBh"));
            Integer soLuongTon = Integer.parseInt(req.getParameter("soLuongTon"));
            Float giaNhap = Float.parseFloat(req.getParameter("giaNhap"));
            Float giaBan = Float.parseFloat(req.getParameter("giaBan"));
            ChiTietSp chiTietSp = ChiTietSp.builder()
                    .id(id)
                    .idSp(idSp)
                    .idNsx(idNsx)
                    .idMauSac(idMauSac)
                    .idDongSp(idDongSp)
                    .namBh(namBh)
                    .moTa(moTa)
                    .soLuongTon(soLuongTon)
                    .giaNhap(giaNhap)
                    .giaBan(giaBan)
                    .build();
            repo.update(chiTietSp);
            listct.clear();
            listct  = repo.getAll();
            req.setAttribute("listct", listct);
            req.getRequestDispatcher("/CTSP/hien-thi.jsp").forward(req, resp);
        }
    }
}
