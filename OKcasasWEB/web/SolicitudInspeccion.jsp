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
        <link href="CSS/SolicitudInspeccion.css" rel="stylesheet" type="text/css"/>
        <title>Solcitud de Inspeccion</title>
    </head>
    <body>
        <%@include file="index.jsp" %>

        <div class="container ">
            <div class="row">
                <div class="col-3"></div>
                <div class="col-6 align-self-center SolicitudI text-center">

                    <c:if test="${msj!=null}">
                        <div class="alert alert-success">${msj}</div>
                        <div class="alert alert-success">Tu código de inspección es: ${username}</div>
                    </c:if>
                    <c:if test="${err!=null}">
                        <div class="alert alert-danger">${err}</div>
                    </c:if>

                    <c:if test="${errp!=null}">
                        <div class="alert alert-danger mt-3 text-center">${errp}</div>
                    </c:if>

                    <div class="titulos">
                        <span class="title">Complete su solicitud</span>    
                    </div>
                    <form action="servletSolicitud" class="needs-validation" method="POST">    

                        <label for="Rut">RUT Cliente ${username}</label>
                        <input type="text" name="txtRut" placeholder="1234567892" class="form-control" required>

                        <img src="IMG/pin.png"  class="iconsR" width="25px"/>
                        <label for="Direccion">Dirección</label>
                        <input type="text" name="txtDireccion" placeholder="AV Siempre Viva #0251" class="form-control" required>

                        <img src="IMG/calendar.png"  class="iconsR" width="25px"/>
                        <label for="Fechahora">Fecha & Hora</label>
                        <input type="text" name="txtFechahora" placeholder="MM/DD/AAAA HH:MM" class="form-control" required>

                        <img src="IMG/mail.png"  class="iconsR" width="25px"/>
                        <label for="Email">Correo Electronico</label>
                        <input type="email" name="txtEmail" placeholder="Example@example.com"class="form-control" required>

                        <img src="IMG/phone.png"  class="iconsR" width="25px"/>
                        <label for="Celular">Celular</label>
                        <input type="number" name="txtCelular" placeholder="123456789" class="form-control" required>

                        <img src="IMG/wrench.png"  class="iconsR" width="25px"/>
                        <label for="Servicio">Pago de Servicio</label> 
                        <label > TOTAL A PAGAR : 93.780‬</label>
                        <input type="number" name="txtMonto" placeholder="Ingrese Monto" class="form-control" required>

                        <div>
                            <input class="btn-dark btnEnviarSo" type="submit" name="btnSolicitud" value="Pagar y Enviar Solicitud">
                        </div>

                    </form>
                </div>


                <div class="col-3"></div>
            </div>

    </body>
    <footer class="footer text-center">

        <p class="footerr">
            2020 @OKCASAS.COM Todos los derechos reservados
        </p>

    </footer>
</html>