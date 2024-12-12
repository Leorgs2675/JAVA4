package controller;

import entity.DongSp;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import repository.DongSpRepository;

@WebServlet(value = {
        "/dsp/dspall",
        "/dsp/dspdetail",
        "/dsp/dspdelete"
})
public class DongSpServlet extends HttpServlet {
    private List<DongSp> listdsp = new ArrayList<DongSp>();
    private DongSpRepository repo = new DongSpRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("dspall")){
            listdsp.clear();
            listdsp  = repo.getAll();
            req.setAttribute("listdsp", listdsp);
            req.getRequestDispatcher("/DSP/hien-thi.jsp").forward(req, resp);
        }else if (uri.contains("dspdetail")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            DongSp sp = repo.findById(id);
            req.setAttribute("sp", sp);
            req.getRequestDispatcher("/DSP/update.jsp").forward(req, resp);
        }else if (uri.contains("dspdelete")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            DongSp sp = repo.findById(id);
            repo.delete(sp);
            listdsp.clear();
            listdsp  = repo.getAll();
            req.setAttribute("listdsp", listdsp);
            req.getRequestDispatcher("/DSP/hien-thi.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("add")){
            String ma = req.getParameter("ma");
            String ten = req.getParameter("ten");
            DongSp dongSp = DongSp.builder()
                    .ma(ma)
                    .ten(ten)
                    .build();
            repo.add(dongSp);
            listdsp.clear();
            listdsp  = repo.getAll();
            req.setAttribute("listdsp", listdsp);
            req.getRequestDispatcher("/DSP/hien-thi.jsp").forward(req, resp);
        }else if (action.equalsIgnoreCase("update")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            String ma = req.getParameter("ma");
            String ten = req.getParameter("ten");
            DongSp dongSp = DongSp.builder()
                    .id(id)
                    .ma(ma)
                    .ten(ten)
                    .build();
            repo.update(dongSp);
            listdsp.clear();
            listdsp  = repo.getAll();
            req.setAttribute("listdsp", listdsp);
            req.getRequestDispatcher("/DSP/hien-thi.jsp").forward(req, resp);
        }
    }
}
