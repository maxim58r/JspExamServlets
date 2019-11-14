<%@ page import="java.util.ArrayList" %>
<%@ page import="ru.max.models.User" %><%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 08.11.2019
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="/css/styles.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="form-style-4">
    <form method="post" action="/signUp">
        <label for="name">User name
            <input type="text" id="name" name="name">
        </label>
        <label for="birthDate">Birth date
            <input type="text" id="birthDate" name="birthDate">
        </label>
        <label for="password">Password
            <input type="password" id="password" name="password">
        </label>
        <input type="submit" value="Sign Up">
    </form>
</div>
<table>
    <tr>
        <th>User name</th>
        <th>Birth Date</th>
    </tr>
    <c:forEach items="${usersFromServer}" var="user">
        <tr>
            <td>${user.name}</td>
            <td>${user.birthDate}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
