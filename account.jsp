<%--
  Created by IntelliJ IDEA.
  User: johnmace
  Date: 21/10/2020
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Account</title>
</head>
<body>
<h1>User Account</h1>

<p><%= request.getAttribute("message") %></p>

<form action="UserLogin" method="post">
    <input type="submit" value="Get All Data">
</form>

<a href="index.jsp">Home Page</a>

</body>
</html>
