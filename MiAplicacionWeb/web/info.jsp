<%-- 
    Document   : info
    Created on : 20-feb-2019, 17:25:00
    Author     : alumno
--%>

<%@page import="Principal.Usuario"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ismael GR - HLC06</title>
    </head>
    <body>
        <!-- Establecemos el valor de las variables dia mes y año -->
        <%! int dia = Calendar.getInstance().get(Calendar.DAY_OF_MONTH); %>
        <%! int mes = Calendar.getInstance().get(Calendar.MONTH) + 1; %>
        <%! int year = Calendar.getInstance().get(Calendar.YEAR);%>

        <p>Fecha actual: <%= dia%>/<%= mes%>/<%= year%></p>

        <form action="mostrarInfo.jsp" method="post">
            Nombre: <input type="text" name="nombre"><br>
            Apellido: <input type="text" name="apellido"><br>
            Fecha Nacimiento: <input type="date" name="fechan"><br>
            <input type="submit" value="Crear">
        </form>

        <!-- Configuramos el "evento" para cuando hagamos submit -->

    </body>
</html>
