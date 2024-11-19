package controller;

import entity.GiangVien;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import repository.GiangVienRepository;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@WebServlet(name = "hehehe",value = {"/gvHien-thi","/gvDetail","/gvUpdate","/gvDelete","/gvSearch"})
public class GiangVienServlet extends HttpServlet {
    private List<GiangVien> list = new ArrayList<>();
    private GiangVienRepository repo = new GiangVienRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri= req.getRequestURI();
        if (uri.contains("gvHien-thi")){
            list.clear();
            list = repo.getAll();
            req.setAttribute("list",list);
            req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
        }else if (uri.contains("gvDetail")){
            Long id = Long.parseLong(req.getParameter("idGV"));
            GiangVien g = repo.getOne(id);
            req.setAttribute("g",g);
            list = repo.getAll();
            req.setAttribute("list",list);
            req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
        }else if (uri.contains("gvUpdate")){
            Long id = Long.parseLong(req.getParameter("idGV"));
            GiangVien g = repo.getOne(id);
            req.setAttribute("g",g);
            req.getRequestDispatcher("/view/update.jsp").forward(req,resp);
        }else if (uri.contains("gvDelete")){
            Long id = Long.parseLong(req.getParameter("idGV"));
            repo.delete(id);
            list.clear();
            list = repo.getAll();
            req.setAttribute("list",list);
            req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
        }else {

        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("add")){
            String maGV = req.getParameter("maGV");
            String que = req.getParameter("que");
            Long tuoi =Long.valueOf(req.getParameter("tuoi"));
            String tenGV = req.getParameter("tenGV");
            String gioiTinh = req.getParameter("gioiTinh");
            GiangVien g = GiangVien.builder()
                    .maGV(maGV)
                    .tenGV(tenGV)
                    .tuoi(tuoi)
                    .gioiTinh(Boolean.valueOf(gioiTinh))
                    .que(que)
                    .build();
            repo.add(g);
            list.clear();
            list = repo.getAll();
            req.setAttribute("list",list);
            req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);

        }else if (action.equalsIgnoreCase("update")){
            Long id = Long.parseLong(req.getParameter("idGV"));
            String maGV = req.getParameter("maGV");
            String que = req.getParameter("que");
            Long tuoi =Long.valueOf(req.getParameter("tuoi"));
            String tenGV = req.getParameter("tenGV");
            String gioiTinh = req.getParameter("gioiTinh");
            GiangVien g = new GiangVien();
            g.setIdGV(id);
            g.setMaGV(maGV);
            g.setTenGV(tenGV);
            g.setTuoi(tuoi);
            g.setGioiTinh(Boolean.valueOf(gioiTinh));
            g.setQue(que);
            repo.update(g);
            list.clear();
            list = repo.getAll();
            req.setAttribute("list",list);
            req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
        }
    }
}
