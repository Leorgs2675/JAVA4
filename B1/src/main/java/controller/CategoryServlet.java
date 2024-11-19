package controller;

import entity.Category;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import repository.CategoryRepository;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "geggege",value = {"/category/hien-thi","/category/detail","/category/delete","/category/search"})
public class CategoryServlet extends HttpServlet {
    private List<Category> list = new ArrayList<>();
    private CategoryRepository repo = new CategoryRepository();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();

        if (uri.contains("hien-thi")){
            list = repo.getAll();
            req.setAttribute("list",list);
            req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
        }else if (uri.contains("detail")){
             Long id =Long.parseLong(req.getParameter("cateID"));
            Category existingCategory = repo.getOne(id);
            req.setAttribute("ci", existingCategory);
            req.getRequestDispatcher("/view/UpdateCate.jsp").forward(req,resp);
        }else if(uri.contains("delete")){
            Long id = Long.parseLong(req.getParameter("cateID"));
            Category cate = repo.getOne(id);
            repo.delete(cate);
            list.clear();
            list = repo.getAll();
            req.setAttribute("list",list);
            req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
        }else if(uri.contains("search")){

        }else {

        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action.equalsIgnoreCase("add")){
            this.add(req,resp);
        }else{
            this.update(req,resp);
        }
    }

    private void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("cateID"));
        String cateName = req.getParameter("cateName");
        String cateCode = req.getParameter("cateCode");
        Category cate = Category.builder()
                .cateID(id)
                .cateName(cateName)
                .cateCode(cateCode)
                .build();
        cate.setCateID(id);
        cate.setCateName(cateName);
        cate.setCateCode(cateCode);
        repo.update(cate);
        list.clear();
        list = repo.getAll();
        req.setAttribute("list",list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }

    private void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        Long id = Long.parseLong(req.getParameter("cateID"));
        String cateName = req.getParameter("cateName");
        String cateCode = req.getParameter("cateCode");
        Category cate = Category.builder()
                .cateName(cateName)
                .cateCode(cateCode)
                .build();
        repo.add(cate);
        list.clear();
        list = repo.getAll();
        req.setAttribute("list",list);
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req,resp);
    }
}
