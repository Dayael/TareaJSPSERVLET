<%-- 
    Document   : jsp2
    Created on : 14 mar 2023, 13:12:32
    Author     : alumno
--%>

<%@page import="java.util.List"%>
<%@page import="org.gerdoc.Datos"%>
<%@page import="org.gerdoc.Negocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark">
            <div class="container-fluid">
            <a class="navbar-brand" href="#">JSP 2</a>
            </div>
        </nav>
        <br>
        <br>
        <%
            int i = 0;
            List<Datos> lista = null;
            String id = null;
            String borrar = null;
            session = request.getSession( true );
            
            if( session != null )
            {
                if( session.getAttribute("lista") != null )
                {
                    lista = (List)session.getAttribute( "lista" );
                }
            }
            id = request.getParameter( "id" );
            borrar = request.getParameter( "borrar" );
            if( "Submit".equals( borrar ) )
            {
                lista.remove( Integer.parseInt(id) );
            }
        %>
        
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
              Cambiar de pagina
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
              <li><a class="dropdown-item" href="index.html">Ir a menu jsp</a></li>
              <li><a class="dropdown-item" href="jsp1.jsp">Ir a jsp1</a></li>
            </ul>
        </div>
 
        <br>
        <br>        
        <table class="table table-dark table-striped">
            <tr>
                <td>#</td>
                <td>Id</td>
                <td>Nombre</td>
                <td>Cal</td>
                <td>Acciones</td>
            </tr>
            <%
              if( lista != null && !lista.isEmpty() )
              {
                for( Datos datos : lista)
                {
            %>
            <tr>
                <td><%=i + 1%></td>
                <td><%=i%></td>
                <td><%=datos.getNombre( )%></td>
                <td><%=datos.getCalf()%></td>
                <td>
                    <a href="jsp2.jsp?id=<%=i%>&borrar=Submit">Borrar</a> 
                    <a href="jsp3.jsp?id=<%=i++%>&editar=Submit">Editar</a> 
                </td>
            </tr>
            <%
                }
              }
            %>
        </table>
        
        <a class="btn btn-primary" href="jsp3.jsp" role="button">Añadir registro</a>
        
    </body>
</html>
