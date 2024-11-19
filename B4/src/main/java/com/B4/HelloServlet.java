package com.B4;

//import java.io.*;


import entity.TaiKhoan;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.query.Query;
import java.io.IOException;

@WebServlet(name = "Hê Lô", value = "/login")
public class HelloServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Get username and password from form
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        // Check if user exists in the database
        boolean isValidUser = validateUser(username, password);

        if (isValidUser) {
            // Redirect to welcome page
//                resp.sendRedirect("/view/hien-thi.jsp");
        } else {
            // Redirect back to login page with error message
            resp.sendRedirect("index.jsp?error=Invalid username or password");
        }
    }

    private boolean validateUser(String username, String password) {
        Session session = HibernateUtils.getFACTORY().openSession();
        boolean isValidUser = false;

        try {
            // Query to check if user exists with the given username and password
//            String hql = "FROM TaiKhoan  WHERE userName = :username AND passWord = :password";
            Query<TaiKhoan> query = session.createQuery("FROM TaiKhoan  WHERE userName = :username AND passWord = :password", TaiKhoan.class);
            query.setParameter("username", username);
            query.setParameter("password", password);

            TaiKhoan taiKhoan = query.uniqueResult();
            isValidUser = taiKhoan != null;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }

        return isValidUser;
    }
}