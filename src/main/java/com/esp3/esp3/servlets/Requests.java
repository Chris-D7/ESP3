package com.esp3.esp3.servlets;

import com.esp3.esp3.common.CarDto;
import com.esp3.esp3.ejb.CarsBean;
import jakarta.inject.Inject;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "Requests", value = "/Requests")
public class Requests extends HttpServlet {

    @Inject
    CarsBean carsBean;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CarDto> cars=carsBean.findAllCars();
        request.setAttribute("cars", cars);
        request.setAttribute("numberOfFreeParkingSpots", 10);
        request.setAttribute("activePage", "Cars");
        request.getRequestDispatcher("/WEB-INF/pages/requests.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
