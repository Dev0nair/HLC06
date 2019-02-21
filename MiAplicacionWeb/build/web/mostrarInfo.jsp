<%-- 
    Document   : mostrarInfo
    Created on : 21-feb-2019, 12:08:54
    Author     : 3268i
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Cogemos las variables -->
        <%
            String nombreu = "", apellidou = "", fechau = "", edad = "";
            Calendar fechaFinal = Calendar.getInstance();

            if (request.getParameter("nombre") != null) {
                nombreu = request.getParameter("nombre");
            }
            if (request.getParameter("apellido") != null) {
                apellidou = request.getParameter("apellido");
            }
            if (request.getParameter("fechan") != null) {
                fechau = request.getParameter("fechan");
                // year month date
                fechaFinal.set(Integer.parseInt(fechau.substring(0, 3)), Integer.parseInt(fechau.substring(5, 6)), Integer.parseInt(fechau.substring(8, 9)));
                
                // calculamos edad. 86400000 = milisegundos en un dia, y nos dará los días. posteriormente dividimos por los días que tenga un año
                edad = "";
            } 

        %>
        <jsp:useBean id="user" class="Principal.Usuario" scope="session"/>
        <jsp:setProperty name="user" property="nombre" value="<%= nombreu%>" />
        <jsp:setProperty name="user" property="apellido" value="<%= apellidou%>" />
        <jsp:setProperty name="user" property="fechaNac" value="<%= fechaFinal%>" />
        
        <!-- ahora definimos las diferentes variables para la fecha, edad... -->
        
        <ul>
            <li>Nombre: <jsp:getProperty name="user" property="nombre" /> <jsp:getProperty name="user" property="apellido" /></li>
            <li>Fecha nacimiento: <%= fechau %></li>
            <li>Edad: <%= edad %></li>
        </ul>
        
    </body>
</html>
