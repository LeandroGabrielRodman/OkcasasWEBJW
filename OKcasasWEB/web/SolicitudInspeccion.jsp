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
                <div class="col-2"></div>
                
                <div class="col-8 SolicitudI">
                    <form action="sevletSolicitud" method="POST">
                        <tr>
                            <td class="TitulosTD">RUT Cliente <input type="text" name="txtRut" class="form-control" required></td>
                        </tr>
                         <tr>
                            <td>Direccion <input type="text" name="txtRut" class="form-control" required></td>
                        </tr>
                          <tr>
                            <td>Codigo de Inspección <input type="text" name="txtCodigo" class="form-control" readonly></td>
                        </tr>
                          <tr>
                            <td>Tipo de servicio <input type="text" name="txtservicio" class="form-control" required></td>
                        </tr>
                          <tr>
                            <td>Fecha & Hora<input type="datetime" name="txtfechahora" class="form-control" required></td>
                        </tr>
                          <tr>
                            <td> Correo Electronico <input type="email" name="txtemail" class="form-control" required></td>
                        </tr>
                        <tr>
                            <td> Celular <input type="number" name="txtcelular" class="form-control" required></td>
                        </tr>
                         
                    </form>
                </div>
                
                
                <div class="col-2"></div>
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