<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<style>
    .general {
        width: 100%;
    }

    .interface {
        position: relative;
        width: 75%;
        height: 10%;
        background-color: black;
        float: right;
    }

    #logo {
        width: 25%;
        height: 10%;
        background-color: black;
        float: left;
    }

    .text {
        font-family: Verdana, Arial, Helvetica, sans-serif;
        font-size: 24px;
        color: #FFFFFF;
        font-weight: bold;
        margin-left: 100px;
        padding-top: 20px;
        width: 30px;
    }

    .text1 {
        font-family: Verdana, Arial, Helvetica, sans-serif;
        font-size: 18px;
        color: rosybrown;
        font-weight: bold;
        margin-left: 180px;
        width: 30px;
        margin-top: -23px;
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
</style>
<div class="general">
    <div id="logo">
        <a href="WelcomeClassMenuAdmin">
            <div class="text">Data</div>
            <div class="text1">Storage</div>
        </a>
    </div>
    <div class="interface">
        <ul>
            <li>
            </li>
            <li class="dropdown">
                <a href="#" class="dropbtn">About us</a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropbtn">Service</a>
            </li>
            <li class="dropdown">
                <a href="CatalogAdmin" class="dropbtn">Catalog</a>
            </li>
            <li>
            <a href="AddProductInCatalog" class="dropbtn">Edit catalog</a>
            </li>
            <li class="dropdown">
                <a ${sessionScope.nohidden} href="LogOut" class="dropbtn">LogOut</a>
            </li>
        </ul>
    </div>
</div>
