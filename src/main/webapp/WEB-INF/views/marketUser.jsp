<%@ page import="java.sql.ResultSet" %>
<%@ page import="by.application.javaWeb.connection.DatabaseConnection" %><%--
  Created by IntelliJ IDEA.
  User: Виталий
  Date: 08.09.2022
  Time: 9:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Computer market</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">

    <!-- Importing all ui libs -->
    <link href="assets/css/font-awesome.css" rel="stylesheet"/>
    <link href="assets/css/style.css" rel="stylesheet"/>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script src="js/simpleCart.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
          rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="js/jquery.easing.min.js"></script>
    <script src='../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
    <script src="../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
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
        width: 400px;
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
<body>
<jsp:include page="headerUser.jsp"></jsp:include>
<div id="layout">
    <div id="searchbg">
        <div id="search">
            <div class="searchtxt">Search Product</div>
            <div id="textfield">
                <form action="SearchProduct" method="post">
                    <input type="text" name="nameProduct" placeholder="enter name product"/>
                    <input value="Search" type="submit"/>
                </form>
            </div>
            <div id="bullet5"></div>
        </div>
        <div class="welcome">WELCOME
            ${name} ${surname} to data storage!</div>
        <a href="SendMessage" class="readtxtwel">Private office</a>
    </div>
</div>
<div id="curve">
    <div class="onsale"><h1>NEW AVAILABLE</h1></div>
</div>

<table align="center" bgcolor="#dcffed" border=0 width="800">
    <tr>
        <td colspan="2" align="center"><font size="6"></td>

    <tr align="right" valign="bottom">
        <!--  <td><font color="Black"><b>${nameprod}</b></font></td>-->
        <td><font color="Black"><b>Smartphone</b></font>
            <!--   <td><font color="Black"><b>Laptop</b></font></td>-->
    </tr>

    <tr align="right" valign="bottom" width="600">
        <td>
            <img src="${photo}" width="70%" height="auto">
            <!--     <img src="img/samsungs.jpeg" width="600" height="auto">-->
        </td>
        <!--     <td>
                 <img src="img/prosixteens.png" width="600" height="auto">
             </td>
     -->
    </tr>

    <tr align="left" valign="top">
        <!--  <td>
              Display. 6.1 inches. 2340 x 1080 pixels. 120Hz Refresh rate.
              Camera. 50 MP (Triple camera) 10 MP front.
              Hardware. Qualcomm Snapdragon 8 Gen 1. 8GB RAM.
              Storage. 128GB, not expandable.
              Battery. 3700 mAh.
              OS. Android 12. One UI UI.
          </td>
              <td>
                  "Vivobook Pro 16X OLED brings you the speed and
                  accuracy you need to realize your vision,
                  with a 16-inch NanoEdge 4K OLED1 display,
                  11th Generation Intel® H Series CPU, and NVIDIA®
                  GeForce RTX™ 3050 graphics. The exclusive ASUS DialPad
                  gives you precise and intuitive control of your creative tools,
                  and the dual-fan cooling design lets you work in undisturbed peace.
                  Vivobook Pro 16X OLED unlocks the door to your creative future."
              </td>
      -->
    </tr>
</table>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
