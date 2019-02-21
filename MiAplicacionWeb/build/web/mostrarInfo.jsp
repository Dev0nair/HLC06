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
            String nombreu = "", apellidou = "", fechau = "";
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
                fechaFinal.set(Integer.parseInt(fechau.substring(0, 4)), Integer.parseInt(fechau.substring(5, 7)), Integer.parseInt(fechau.substring(8, 10)));                
            } 

        %>
        <jsp:useBean id="user" class="Principal.Usuario" scope="session"/>
        <jsp:setProperty name="user" property="nombre" value="<%= nombreu%>" />
        <jsp:setProperty name="user" property="apellido" value="<%= apellidou%>" />
        <jsp:setProperty name="user" property="fechaNac" value="<%= fechaFinal%>" />
        
        <!-- ahora definimos las diferentes variables para la fecha, edad... -->
        <%
            String edad = user.getEdad() + "";
            String horos = user.getSigno();
        %>
        <ul>
            <li>Nombre: <jsp:getProperty name="user" property="nombre" /> <jsp:getProperty name="user" property="apellido" /></li>
            <li>Fecha nacimiento: <%= fechau %></li>
            <li>Edad: <%= edad %></li>
            <li>Horoscopo: <%= horos %></li>
        </ul>
        
    </body>
</html>
