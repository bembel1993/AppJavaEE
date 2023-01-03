package by.application.javaWeb.servlet.AddDelUpEditProduct;

import by.application.javaWeb.connection.DatabaseConnection;

import by.application.javaWeb.dao.daoImpl.ProductDaoImpl;
import by.application.javaWeb.model.person.User;
import by.application.javaWeb.model.product.Product;
import by.application.javaWeb.service.ProductService;
import by.application.javaWeb.service.serviceImpl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.util.List;


@WebServlet(name = "EditProductInCatalog", urlPatterns = "/EditProductInCatalog")
public class EditProductInCatalog extends HttpServlet {
    //private static final long serialVersionUID = 1L;
    ProductService productService = new ProductServiceImpl();
    List<Product> productList = productService.showProduct();

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/WEB-INF/views/catalogEditForAdmin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            String idPost = request.getParameter("id");
            int id2 = Integer.parseInt(idPost);
            String nameprod = request.getParameter("nameprod");
            String price = request.getParameter("price");
            String manufacturer = request.getParameter("manufacturer");
            String releaseDate = request.getParameter("releaseDate");
            String photo = request.getParameter("photo");

       //     Product product = new Product(nameprod, price, manufacturer, releaseDate, photo);

            System.out.println("");

            if (("".equals(nameprod)) || ("".equals(price)) || ("".equals(manufacturer))
                    || "".equals(releaseDate)) {
                request.setAttribute("errorMessage", "Fill in all the fields");
                request.getRequestDispatcher("/WEB-INF/views/catalogEditForAdmin.jsp").forward(request, response);
            } else {
                boolean isUnique = true;
                for (Product p : productList) {
                    if (id2 == p.getId()) {
                        System.out.println(" ");
                        System.out.format("%10s%20s%20s%20s%20s", p.getId() + " |", p.getNameprod() +
                                        " |", p.getPrice() + " |", p.getManufacturer() + " |",
                                p.getReleaseDate());
                        System.out.println(" ");

                        Product product = new Product(nameprod, price, manufacturer, releaseDate, photo);
                        productService.updateProduct(product);
                        isUnique = false;
                    }
                }
                productService.findProductById(id2);
                    //productService.updateProduct(product);
                    System.out.println("---Product is update---");

                    //List<Person> personList = personService.showPeople();
                    //request.setAttribute("group", productService);
                    //request.getSession().setAttribute("group", productService);
                    doGet(request, response);
                //  request.getRequestDispatcher("/WEB-INF/views/catalogEditForAdmin.jsp").forward(request, response);
            }
        } catch (Exception ex) {
            System.out.println("Catch of update");
            System.out.println(ex);
            request.getRequestDispatcher("/WEB-INF/views/catalogEditForAdmin.jsp").forward(request, response);
        }
    }
}