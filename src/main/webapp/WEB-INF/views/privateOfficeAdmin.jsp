<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: Виталий
  Date: 12.10.2022
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Private Office of Admin</title>
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

    .content {
        position: relative;
        height: 40px;
        padding: 30px 40px;
        background-color: royalblue;
    }

</style>

<div>
    <jsp:include page="headerAdmin.jsp"></jsp:include>
    <div>
        <div id="layout">

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
                <div class="welcome"> ${name} ${surname} you are in your Private Office</div>
            </div>
        </div>
        <div id="curve">
            <div class="onsale"><h1>Write message for User</h1></div>
        </div>
        <a href="EmailForm.jsp" class="abt2">Send Message</a>
        <form method="post" action="SendMessageAdmin">
            <center>
                <table border="0" align="center" width="50%" high="30px">
                    <tr align="center" bgcolor="#4169e1">
                        <th><i>person</i></th>
                        <th>message</th>
                    </tr>
                    <c:forEach items="${mess}" var="message">
                        <tr align="center" bgcolor="#dcffed">
                            <td>${message.person} ${name}</td>
                            <td>${message.message} ${message}</td>
                        </tr>
                    </c:forEach>

                    </td>
                    </td>
                    <!--<input id = "mess" name="mess" cols="70" rows="3"/>-->
                    <textarea name="comment" cols="70" rows="3"></textarea>
                    <button type="submit" id="insertMessage" name="insertMessage"> Send</button>
                </table>
            </center>
        </form>

    </div>

    <jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>

