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
        <!-- Referencia a bootstrap css -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ismael GR - HLC06</title>
    </head>
    <body  class="bg-dark">
        
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
        
        <section class="p-5">

            <div class="container form text-white p-5 text-center d-flex align-items-start flex-column bd-highlight mb-3">
                
                <h2 class="p-5">Información del usuario.</h2>
                
                <p>Nombre: <jsp:getProperty name="user" property="nombre" /> <jsp:getProperty name="user" property="apellido" /></p>
                <p>Fecha nacimiento: <%= fechau %></p>
                <p>Edad: <%= edad %></p>
                <p>Horoscopo: <%= horos %></p>
                
            </div>

        </section>

        <!-- referencias a JS de bootstrap4 -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    </body>
</html>
