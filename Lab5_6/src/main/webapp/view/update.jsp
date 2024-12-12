<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/26/2024
  Time: 2:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/dat-phong/hien-thi" method="post" id="myForm">
    <input type="hidden" name="id" value="${dp.id}"><br>
    <input type="text" name="ma" value="${dp.ma}"><br>
    <input type="text" name="ten" value="${dp.ten}"><br>
    <input type="date" name="ngayTao" value="${dp.ngayTao}"><br>
    <input type="text" name="trangThai" value="${dp.trangThai}"><br>
    <input type="submit" value="Update" name="action"><br>
</form>
<script>

</script>
</body>
</html>
