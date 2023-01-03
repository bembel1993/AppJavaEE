<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="by.application.javaWeb.connection.DatabaseConnection" %>
<%
    //Getting all the inputs from the admin
    int id = Integer.parseInt(request.getParameter("pid"));
    String pname = request.getParameter("pname");
    String price = request.getParameter("price");
    String manufacturer = request.getParameter("manufacturer");
    String releaseDate = request.getParameter("releaseDate");
    String photo = request.getParameter("photo");
    //Querying to the database
    int updateProduct = DatabaseConnection.insertUpdateFromSqlQuery("update product set name='" + pname + "',price='" + price + "',manufacturer='" + manufacturer + "',releaseDate='" + releaseDate + "',photo='" + photo + "' where id='" + id + "'");
    if (updateProduct > 0) {
        response.sendRedirect("catalogAdd.jsp");
    } else {
        response.sendRedirect("catalogAdd.jsp");
    }
%>