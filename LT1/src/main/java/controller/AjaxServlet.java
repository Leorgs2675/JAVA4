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

@WebServlet(name = "AjaxServlet", value = "/api/ajax/demo")
public class AjaxServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // B1: Fake data
        SinhVien sv = new SinhVien("HE13041", "Nguyen Thuy Hang", 10);
        // B2: Convert Object/Arrray/.... => Json
        Gson gson = new Gson();
        String data = gson.toJson(sv);
        // B3: Dat kieu tra ve la json
        response.setContentType("application/json");
        // B4: Co the co => hien thi len giao dien
        PrintWriter out = response.getWriter();
        out.println(data);
        out.flush();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

