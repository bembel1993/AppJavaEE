<%--
  Created by IntelliJ IDEA.
  User: Виталий
  Date: 13.09.2022
  Time: 5:35
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
        width: 1000px;
        height: 79px;
        background-repeat: no-repeat;
    }

    .onsale {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 18px;
        font-weight: normal;
        color: #8ea11f;
        margin-left: 100px;

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
<body>
<div id="layout">
    <jsp:include page="headerAdmin.jsp"></jsp:include>
    <div id="searchbg">
        <div id="search">
            <div class="searchtxt">Search Product</div>
            <div id="textfield">
                <form method="post" action="SearchProduct">
                    <input type="text" name="nameprod"/>
                    <button type="submit" name="search">Search</button>
                </form>
            </div>
            <div id="bullet5"></div>
        </div>
        <div class="welcome"> ${name} you are in Catalog!</div>
    </div>
</div>
<>
<center>
    <div id="curve">
        <div class="onsale"><h1>Product Upload to Database</h1></div>
    </div>
    <p><font color="red">${errorMessage}</font></p>
    <p><font color="green">${productIsAdd}</font></p>
    <p><font color="black">${productIsDelete}</font></p>
    <form method="post" action="AddProductInCatalog">
        <table class="details">
            <tr>
                <td>Name production:</td>
                <td><input type="text" name="nameprod" size="50"/></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="text" name="price" size="50"/></td>
            </tr>
            <tr>
                <td>Manufacturer:</td>
                <td><input type="text" name="manufacturer" size="50"/></td>
            </tr>
            <tr>
                <td>Release Date:</td>
                <td><input type="text" name="releaseDate" size="50"/></td>
            </tr>
            <tr>
                <td>Add photo</td>
                <td><input type="text" name="" size="50"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit" id="insertProduct" name="insertProduct"> insert</button>
                </td>
            </tr>
        </table>
    </form>
</center>
<form>
    <table class="table table-bordered">
        <thead>
        <tr align="center" bgcolor="#4169e1">
            <th>ID</th>
            <th>Nameprod</th>
            <th>Price</th>
            <th>Manufacturer</th>
            <th>Release Date</th>
            <th>Actions</th>
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
                <!--  <td><a href="edit?id=<c:out value='${user.id}' />">Edit</a>
                    &nbsp;&nbsp;&nbsp<a href="delete?id=<c:out value='${user.id}' />">Delete</a></td>-->
                <td>
                    <a href="${pageContext.request.contextPath }/EditProductInCatalog?action=edit&id=${product.id}">Edit</a>
                    &nbsp;&nbsp;&nbsp;
                    <a href="${pageContext.request.contextPath }/DeleteProductInCatalog?action=delete&id=${product.id }">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
        </td>
        </td>
    </table>
</form>
</div>

<jsp:include page="footer.jsp"></jsp:include>

</script>
</body>
</html>
