<%--
  Created by IntelliJ IDEA.
  User: Виталий
  Date: 22.10.2022
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Send an e-mail</title>
</head>
<body>
<form action="EmailSendingServlet" method="post">
    <table border="0" width="35%" align="center">
        <caption><h2>Send New E-mail</h2></caption>
        <tr>
            <td width="50%">Recipient address</td>
            <td><input type="text" name="recipient" size="50"/></td>
        </tr>
        <tr>
            <td>Subject</td>
            <td><input type="text" name="subject" size="50"/></td>
        </tr>
        <tr>
            <td>Content</td>
            <td><textarea rows="10" cols="39" name="content"></textarea></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Send"/></td>
        </tr>
    </table>

</form>
</body>
</html>
