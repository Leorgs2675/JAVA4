package controller;

import entity.CuaHang;
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
import repository.CuaHangRepository;

@WebServlet(value = {
        "/ch/chall",
        "/ch/chdetail",
        "/ch/chdelete"
})
public class CuaHangServlet extends HttpServlet {
    private List<CuaHang> listch = new ArrayList<CuaHang>();
    private CuaHangRepository repo = new CuaHangRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("chall")){
            listch.clear();
            listch  = repo.getAll();
            req.setAttribute("listch", listch);
            req.getRequestDispatcher("/CH/hien-thi.jsp").forward(req, resp);
        }else if (uri.contains("chdetail")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            CuaHang sp = repo.findById(id);
            req.setAttribute("sp", sp);
            req.getRequestDispatcher("/CH/update.jsp").forward(req, resp);
        }else if (uri.contains("chdelete")){
            Integer id = Integer.parseInt(req.getParameter("id"));
            CuaHang sp = repo.findById(id);
            repo.delete(sp);
            listch.clear();
            listch  = repo.getAll();
            req.setAttribute("listch", listch);
            req.getRequestDispatcher("/CH/hien-thi.jsp").forward(req, resp);
        }
    }
    @SneakyThrows
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("add")){
            CuaHang cuaHang = new CuaHang();
            BeanUtils.populate(cuaHang, req.getParameterMap());
            repo.add(cuaHang);
            listch.clear();
            listch  = repo.getAll();
            req.setAttribute("listch", listch);
            req.getRequestDispatcher("/CH/hien-thi.jsp").forward(req, resp);
        }else if (action.equalsIgnoreCase("update")){
            CuaHang cuaHang = new CuaHang();
            BeanUtils.populate(cuaHang, req.getParameterMap());
            repo.update(cuaHang);
            listch.clear();
            listch  = repo.getAll();
            req.setAttribute("listch", listch);
            req.getRequestDispatcher("/CH/hien-thi.jsp").forward(req, resp);
        }
    }
}
