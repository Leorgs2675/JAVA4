<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/17/2024
  Time: 5:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>Request : ${mess}</p>
<%
    // Thiet lap gia tri cho page context
    pageContext.setAttribute("message2","Scope - JSP & Servlet -Page");
    String message2 = (String) pageContext.getAttribute("message2");
%>
<p>Page : ${message2}</p>
<p>Aplication : ${mess3}</p>
<p>Aplication C2: ${applicationScope.mess3}</p>
<p>Session : ${mess4}</p>
<p>Session C2: ${sessionScope.mess4}</p>
</body>
</html>
