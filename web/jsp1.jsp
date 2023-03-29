<%-- 
    Document   : jsp1
    Created on : 9 mar 2023, 13:10:58
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">JSP 1</a>
            </div>
        </nav>
        <br>
        <br>
        <div class="card text-dark bg-warning mb-3" style="max-width: 18rem;">
                <div class="card-header">Contenido</div>
                <div class="card-body">
                  <h5 class="card-title">Informacion de la pagina</h5>
                  <p class="card-text">Hola planeta gerdoc jijijija</p>
                </div>
        </div>
        
        
        
        <div class="card text-white bg-success mb-3" style="max-width: 18rem;">
            <div class="card-header">Codigo</div>
            <div class="card-body">
              <h5 class="card-title">Numerito</h5>


    
        <h2><%=request.getParameter("numero") == null? "Sin dato" : request.getParameter("numero") %></h2>
        <%
            
            int x = (int)((Math.random() * 100 ));
            if( x < 50 )
            {
        %>
                <h1>Es menor a 50</h1>
        <%
            }
            else
            {
        %>
                <h1>Es mayor o igual a 50</h1>
        <%
            }
        %>
        <h1>El valor es <%=x%></h1>
        
        </div>
    </div>
        
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
              Cambiar de pagina
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
              <li><a class="dropdown-item" href="index.html">Ir a menu jsp</a></li>
              <li><a class="dropdown-item" href="jsp2.jsp">Ir a jsp2</a></li>
            </ul>
        </div>
    </body>
</html>
