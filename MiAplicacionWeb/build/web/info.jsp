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
        <!-- Referencia a bootstrap css -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ismael GR - HLC06</title>
    </head>
    <body class="bg-dark">
        <!-- Establecemos el valor de las variables dia mes y año -->
        <%! int dia = Calendar.getInstance().get(Calendar.DAY_OF_MONTH); %>
        <%! int mes = Calendar.getInstance().get(Calendar.MONTH) + 1; %>
        <%! int year = Calendar.getInstance().get(Calendar.YEAR);%>

        <!-- Configuramos el "evento" para cuando hagamos submit -->
    <section class="p-5">

        <div class="container form text-white p-5">
      
          <h2 class="text-center">Fecha actual: <%= dia%>/<%= mes%>/<%= year%></h2>
          
          <form method="POST" action="mostrarInfo.jsp">
            <div class="form-group">
              <label for="name">Nombre:</label>
              <input type="text" class="form-control" id="nombre" placeholder="Introducir nombre" name="nombre" required="true">
            </div>

            <div class="form-group">
              <label for="email">Apellido:</label>
              <input type="text" class="form-control" id="apellido" placeholder="Introducir apellido" name="apellido" required="true">
            </div>

            <div class="form-group">
              <label for="name">Fecha nacimiento:</label>
              <input type="date" class="form-control" id="nombre" name="fechan" required="true">
            </div>

            <button onclick="location.href='index.html'" class="btn btn-second">Salir</button>
            <button type="submit" class="btn btn-primary">Calcular</button>
          </form>
          </br>
        </div>
    </section>
    
    <!-- referencias a JS de bootstrap4 -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    </body>
</html>
