<%-- 
    Document   : SolicitudInspeccion
    Created on : 10-06-2020, 17:40:12
    Author     : lanxi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="Description" content="Enter your description here"/>

        <title>Solcitud de Inspeccion</title>
    </head>
    <body>
        <%@include file="index.jsp" %>
            
        <div class="container">
            <div class="row">
                
                <div class="col-1"></div>
                <!Contenedor formulario >
                <div class="col-10 SolicitudI ">
               <!Direccion,tipo_servicio,fecha_hora,celular,correo,cliente_rut>
               <form action="servletSolicitud" method="POST">
                   
               </form>
                
                <div class="col-1"></div>
            </div>
            
        </div>
        
    </body>
    <footer class="footer text-center">
        <div class="container-footer">
            <p>
                2020 @OKCASAS.COM Todos los derechos reservados
            </p>
        </div>
    </footer>
</html>