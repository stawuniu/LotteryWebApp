<%--
  Created by IntelliJ IDEA.
  User: johnmace
  Date: 21/10/2020
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>

<h1>Create account</h1>

<form action="CreateAccount" method="post">
    <label for="firstname">First name:</label><br>
    <input type="text" id="firstname" name="firstname" required><br>

    <label for="lastname">Last name:</label><br>
    <input type="text" id="lastname" name="lastname" required><br>

    <label for="username">Username:</label><br>
    <input type="text" id="username" name="username" required><br>

    <label for="phone">Phone number</label><br>
    <input type="text" id="phone" name="phone" pattern="[0-9]{2}-[0-9]{4}-[0-9]{7}" required><br>

    <label for="email">Email adress</label><br>
    <input type="text" id="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required><br>

    <label for="password">Password</label><br>
    <input type="password" id="password" name="password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}" required><br><br>

    <input type="submit" value="Submit">
</form>

<h1>Login</h1>

<form action="UserLogin" method="post">

    <label for="username">Username:</label><br>
    <input type="text"  name="username" required><br>


    <label for="password">Password</label><br>
    <input type="password"  name="password"  required><br><br>

    <input type="submit" value="Submit">
</form>
</body>
</html>
