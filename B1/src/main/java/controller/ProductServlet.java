package controller;

import entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import repository.ProductRepository;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@WebServlet(value = {
        "/product/hien-thi"
})
public class ProductServlet extends HttpServlet {
    private List<Product> listpr = new ArrayList<>();
    private ProductRepository repoPr = new ProductRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("hien-thi")){
            this.getAll(req,resp);
        }
        this.detail(req,resp);
    }

    private void detail(HttpServletRequest req, HttpServletResponse resp) {
    }

    private void getAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        listpr.clear();
        listpr = repoPr.getAll();
        req.setAttribute("listpr",listpr);
        req.getRequestDispatcher("/view/hien-thi-Product.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
