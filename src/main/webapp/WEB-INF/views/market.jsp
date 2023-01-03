<%--
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
        width: 400px;

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

    .container {
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        color: #fff;
    }

    .lead {
        font-family: 'Quicksand';
    }

    .header-bar {
        position: relative;
        width: 50%;
        min-width: 300px;
        height: 50px;
        border: 10px solid transparent;
        border-top: 10px solid #fffa;
        border-left: 10px solid #fffa;
        box-shadow: 4px 4px 5px rgba(0, 0, 0, 0.25) inset;
    }

    .header-bar::after {
        content: '';
        position: absolute;
        top: -10px;
        right: -10px;
        width: 30%;
        height: 49px;
        border: 10px solid transparent;
        border-bottom: 10px solid #fffa;
        border-right: 10px solid #fffa;
        transition: 0.3s linear all;
    }

    .header-bar > .logo {
        position: absolute;
        top: calc(50% - 20px);
        left: 10px;
        transform: translateY(-50%);
        color: #fffc;
        font-family: 'Parisienne', cursive;
        cursor: default;
        user-select: none;
    }

    .slider-menu {
        position: absolute;
        top: 0;
        right: 0;
        display: flex;
        list-style-type: none;
        margin: 0;
        padding: 0;
        z-index: 1;
    }

    .slider-menu > li {
        display: inline-flex;
        padding: 14px;
        margin-left: 2px;
        font-family: 'Quicksand', sans-serif;
        color: #fff;
        cursor: pointer;
        transition: 0.3s linear all;
        user-select: none;
    }

    .slider-menu > li:hover {
        color: #faa;
        box-shadow: 0 50px 5px rgba(0, 0, 0, 0.15) inset;
    }

    .aeu-signature {
        position: fixed;
        top: 5px;
        left: 50%;
        transform: translate(-50%);
        font-size: 15px;
        line-height: 30px;
        background-color: #fff;
        padding: 5px 10px;
        border-radius: 25px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
    }

    .aeu-signature {
        font-family: "Quicksand";
    }

    .aeu-signature > img {
        height: 30px;
    }

    <!--
    -->
    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        text-align: left;
    }

    .dropdown-content a:hover {
        background-color: royalblue
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }

    ul {
        list-style-type: none;
        margin-top: -5px;
        padding: 0;
        overflow: hidden;
        background-color: black;
    }

    li {
        float: left;
        margin-top: 2px;
    }

    li a, .dropbtn {
        display: inline-block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

    li a:hover, .dropdown:hover .dropbtn {
        background-color: royalblue;
    }

    li.dropdown {
        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
        z-index: 1;
    }
    .content{
        height: 70%;
    }
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="layout">
    <div id="searchbg">
        <div class="welcome">WELCOME ${name} ${surname} to data storage!</div>
        <!-- <a href="SendMessage" class="readtxtwel">Private office</a>-->
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
        <td>
            Display. 6.1 inches. 2340 x 1080 pixels. 120Hz Refresh rate.
            Camera. 50 MP (Triple camera) 10 MP front.
            Hardware. Qualcomm Snapdragon 8 Gen 1. 8GB RAM.
            Storage. 128GB, not expandable.
            Battery. 3700 mAh.
            OS. Android 12. One UI UI.
        </td>
        <!--    <td>
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
