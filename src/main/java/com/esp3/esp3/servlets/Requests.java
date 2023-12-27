package com.esp3.esp3.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "Requests", value = "/Requests")
public class Requests extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("numberOfFreeParkingSpots", 10);
        request.setAttribute("activePage", "Cars");
        request.getRequestDispatcher("/WEB-INF/pages/requests.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
