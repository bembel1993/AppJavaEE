<%@ page import="by.application.javaWeb.model.product.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="by.application.javaWeb.dao.ProductDao" %><%--
  Created by IntelliJ IDEA.
  User: Виталий
  Date: 13.09.2022
  Time: 5:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Catalog of market</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>
<style>
    table {
        border-spacing: 6px 10px;
    }

    a:link {
        text-decoration: none;
    }

    a:visited {
        text-decoration: none;
    }

    a:hover {
        text-decoration: none;
    }

    a:active {
        text-decoration: none;
    }

    #layout {
        width: 100%;
        height: auto;
        background-color: #FFFFFF;
        margin: auto;
    }

    body {
        margin: 0 auto;
        background-color: white;
    }

    #title {
        background-color: royalblue;
        width: 100%;
        height: 78px;
    }

    #logo {
        width: 260px;
        height: 78px;
    }

    .text {
        font-family: Verdana, Arial, Helvetica, sans-serif;
        font-size: 24px;
        color: #FFFFFF;
        font-weight: bold;
        margin-left: 40px;
        padding-top: 20px;
        width: 30px;
    }

    .text1 {
        font-family: Verdana, Arial, Helvetica, sans-serif;
        font-size: 18px;
        color: #000000;
        font-weight: bold;
        margin-left: 180px;
        width: 30px;
        margin-top: -23px;
    }

    #links {
        width: 509px;
        height: 78px;
        margin-top: -78px;
        margin-left: 265px;
    }

    #arrow {
        width: 510px;
        height: 10px;
        margin-top: 20px;
    }

    #linktext {
        width: 900px;
        height: 30px;
    }

    #linktext2 {
        width: 700px;
        height: 30px;
    }

    .abt {
        float: left;
        font-family: Arial, Helvetica, sans-serif;
        font-size: 16px;
        font-weight: bold;
        color: #FFFFFF;
        vertical-align: middle;
        margin-left: 18px;
        margin-top: 7px;

    }

    .abt1 {
        float: left;
        font-family: Arial, Helvetica, sans-serif;
        font-size: 16px;
        font-weight: bold;
        color: #FFFFFF;
        vertical-align: middle;
        margin-left: 38px;
        margin-top: 7px;

    }

    .abt2 {
        float: left;
        font-family: Arial, Helvetica, sans-serif;
        font-size: 16px;
        font-weight: bold;
        color: gold;
        vertical-align: middle;
        margin-left: 5px;
        margin-top: 1px;
    }

    #search {
        float: left;
        background-image: url("searchcurve.jpg");
        width: 304px;
        height: 122px;
        background-repeat: no-repeat;
    }

    #searchbg {
        width: 775px;
        height: 122px;
    }

    .searchtxt {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 14px;
        font-weight: bold;
        color: #000000;
        margin-left: 50px;
        padding-top: 20px;

    }

    #textfield {
        margin-left: 50px;
        margin-top: 20px;
    }

    #bullet5 {
        background-image: url("searcharrow.jpg");
        width: 29px;
        height: 30px;
        background-repeat: no-repeat;
        margin-left: 245px;
        margin-top: -28px;
    }

    .welcome {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 30px;
        font-weight: bold;
        color: #C67108;
        margin-left: 330px;
        width: 700px;
        padding-top: 10px;

    }

    #curve {
        background-image: url("curve.jpg");
        width: 775px;
        height: 79px;
        background-repeat: no-repeat;
    }

    .onsale {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 18px;
        font-weight: normal;
        color: #8ea11f;
        margin-left: 550px;

    }

    .readtxtwel {
        margin-left: 30px;
        font-family: Arial, Helvetica, sans-serif;
        font-size: 10px;
        font-weight: bold;
        color: #8ea505;
        text-decoration: underline;
        margin-top: -12px;
    }

    .content {
        position: relative;
        height: 40px;
        padding: 30px 40px;
        background-color: royalblue;
    }

</style>
<div>
    <div id="layout">
        <jsp:include page="header.jsp"></jsp:include>

        <div id="searchbg">
                <div id="search">
                    <div class="searchtxt">Search Product</div>
                    <div id="textfield">
                        <form action="SearchProduct" method="post">
                            <input type="text" name="nameProduct" placeholder="enter name product"/>
                            <input type="submit"/>
                        </form>
                    </div>
                    <div id="bullet5"></div>
                </div>
                <div class="welcome"> ${name} ${surname} you are in Catalog!</div>
        </div>
    </div>
    <div id="curve">
        <div class="onsale"><h1>ON SALE</h1></div>
    </div>

    <center>
        <table class="table table-bordered">
            <thead>
            <tr align="center" bgcolor="#4169e1">
                <th>ID</th>
                <th>Nameprod</th>
                <th>Price</th>
                <th>Manufacturer</th>
                <th>Release Date</th>

            </tr>
            </thead>
            <tbody>
            <c:forEach items="${group}" var="product">
                <tr>
                    <td>
                        <c:out value="${product.id}"/>
                    </td>
                    <td>
                        <img width="30%" height="30%" src="${product.photo}" alt="photo"/>
                        <c:out value="${product.nameprod}"/>
                    </td>
                    <td><c:out value="${product.price}"/></td>
                    <td><c:out value="${product.manufacturer}"/></td>
                    <td><c:out value="${product.releaseDate}"/></td>

                </tr>
            </c:forEach>
            </tbody>
            </td>
            </td>
            </form>
        </table>
    </center>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</div>
</div>
</body>
</html>
