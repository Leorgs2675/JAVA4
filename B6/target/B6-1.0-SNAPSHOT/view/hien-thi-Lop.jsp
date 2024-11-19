<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/13/2024
  Time: 5:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>MA</th>
        <th>TEN</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="l" items="${listL}">
        <tr>
            <td>${l.LID}</td>
            <td>${l.LMA}</td>
            <td>${l.LTEN}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
