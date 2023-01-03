package by.application.javaWeb.servlet;

import by.application.javaWeb.connection.DatabaseConnection;
import by.application.javaWeb.model.product.Product;
import by.application.javaWeb.service.ProductService;
import by.application.javaWeb.service.serviceImpl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

@WebServlet(name = "WelcomeClassMenuUser", urlPatterns = "/WelcomeClassMenuUser")
public class WelcomeClassMenuUser extends HttpServlet {
    ProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameprod = request.getParameter("nameprod");
        String photo = request.getParameter("photo");
        List<Product> productList = productService.showProduct();

        for (Product p : productList) {
            System.out.println(p.getNameprod() + " " + p.getManufacturer());
            nameprod = p.getNameprod();
            photo = p.getPhoto();
        }
        request.setAttribute("nameprod", nameprod);
        request.setAttribute("photo", photo);
        //       request.setAttribute("photo", photo);
        getServletContext().getRequestDispatcher("/WEB-INF/views/marketUser.jsp").forward(request, response);
    }

        @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);
        //request.getRequestDispatcher("/WEB-INF/views/marketUser.jsp").forward(request, response);
    }
}