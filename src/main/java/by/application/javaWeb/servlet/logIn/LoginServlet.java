package by.application.javaWeb.servlet.logIn;

import by.application.javaWeb.connection.context.DBContext;
import by.application.javaWeb.model.person.Person;
import by.application.javaWeb.model.person.User;
import by.application.javaWeb.service.PersonService;
import by.application.javaWeb.service.serviceImpl.PersonServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Enumeration;
import java.util.List;

@WebServlet(name = "LoginServlet", urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    // private ListAddPersons listAddPersons = new ListAddPersons();
    PersonService personService = new PersonServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
        //response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        List<Person> personList = personService.showPeople();
        User currentUser = null;
        if (login.equals("admin") && password.equals("admin")) {
            System.out.println(" ");

            name = "admin";

            request.getSession().setAttribute("name", login);
            response.sendRedirect(request.getContextPath() + "/WelcomeClassMenuAdmin");
        } else {
            if (personList.size() != 0) {
                System.out.format("%10s%20s%20s", "ID |", "First Name |", "Password |");
                boolean isFound = false;
                for (Person p : personList) {
                    if (p.getUser().getLoginUser().equals(login) && p.getUser().getPasswordUser().equals(password)) {
                        System.out.println(" ");
                        System.out.format("%10s%20s%20s", p.getId() + " |", p.getFirstName() +
                                " |", p.getUser().getPasswordUser() + " |");
                        System.out.println(" ");
                        currentUser = p.getUser();
                        p.setId(personList.size());
                        name = p.getFirstName();
                        surname = p.getSurname();
                        isFound = true;
                    }
                    if (p.getUser().getLoginUser().equals(login) && !p.getUser().getPasswordUser().equals(password)) {
                        System.out.println("Verify the correct to the input!");
                    }
                }
                Person per = null;
                if (currentUser != null) {
                    System.out.println("Authorization completed is successful! Your welcome ! " +
                            currentUser.getPerson().getSurname() + " " + currentUser.getPerson().getFirstName());
                    request.getSession().setAttribute("name", name);
                    request.getSession().setAttribute("surname", surname);
                    response.sendRedirect(request.getContextPath() + "/WelcomeClassMenuUser");
                } else {
                    request.setAttribute("errorMessage", "Invalid Login or password!!");
                    request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
                }
            } else {
                System.out.println("Users in DB is not!");
                request.setAttribute("errorMessage", "Not found User!!");
                request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
            }
        }
    }
}
