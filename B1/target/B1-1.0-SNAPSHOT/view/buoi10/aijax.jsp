<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/21/2024
  Time: 3:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<button onclick="Hienthidata">Click</button>
<div id="Result"></div>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
<script>
    const Hienthidata = ()=>{
        $.ajax({
            url: '/api/ajax/demo',
            type : 'GET',
            dataType : 'json',
            success: function (response){
                console.log(response)
                document.getElementById("Result").innerHTML =
                    'MSSV: '+response.mssv +' Ten: '+response.tensv +
                    'Tuoi: '+response.tuoisv
            },
            error: function (){
               document.getElementById("Result").innerHTML =
                   "LOI LOI"
            }
        })
    }

</script>
</body>
</html>
