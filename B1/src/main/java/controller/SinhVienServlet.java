package controller;

import com.google.gson.Gson;
import entity.SinhVien;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet (value = "/api/ajax/demo")
public class SinhVienServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SinhVien sv = new SinhVien("fsgbdgsngd","sbgdbsff",20);
        Gson gson = new Gson();
        String json = gson.toJson(sv);
        resp.setContentType("application/json");
        PrintWriter out = resp.getWriter();
        out.println(json);
        out.flush();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
