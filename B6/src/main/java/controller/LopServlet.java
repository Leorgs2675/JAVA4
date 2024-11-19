package controller;

import entity.Lop;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import repository.LopRepository;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/lop/hienthi")
public class LopServlet extends HttpServlet {
    private List<Lop> listL = new ArrayList<>();
    private LopRepository repoL = new LopRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("hienthi")){
            listL.clear();
            listL = repoL.getAll();
            req.setAttribute("listL",listL);
            req.getRequestDispatcher("/view/hien-thi-Lop.jsp").forward(req,resp);
        }
    }

}
