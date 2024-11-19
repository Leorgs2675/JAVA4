package controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(value = "/demoServlet")
public class Servlet extends HttpServlet {
    /**
     * JAVA 1 - PUBLIC PRIVATE PROTECTED DEFAULT
     *
     *
     *
     *
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("mess", "Scope - JSP & Servlet - Request");
        ServletContext aplication = getServletContext();
        aplication.setAttribute("mess3", "Scope - JSP & Servlet - Request");
        HttpSession session = req.getSession();
        session.setAttribute("mess4", "Scope - JSP & Servlet - Session");
        req.getRequestDispatcher("/view/hien-thi.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
