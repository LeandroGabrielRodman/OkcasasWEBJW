<%-- 
    Document   : Ayuda
    Created on : 18-06-2020, 7:12:06
    Author     : lanxi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="index.jsp" %>
        <div class="jumbotron text-center">
            <h1>Enviar Correo</h1>
            <div class="Container">
                <div class="row">

                    <div class="col-3"></div>
                    <div class="col-6">
                        <form action="servletCorreo" method="POST">
                            <table class="table">
                                <tr>
                                    <td>Destinatario</td>
                                    <td><input type="email" name="txtDestinatario" class="form-control" required></td>
                                </tr>
                                <tr>
                                    <td>Asunto</td>
                                    <td><input type="text" name="txtAsunto" class="form-control" required></td>
                                </tr>
                                <tr>
                                    <td>Destinatario</td>
                                    <td><textarea  name="txtMensaje" rows="5" class="form-control" required></textarea></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><input  type="submit" name="btnEnviar" class="btn btn-primary" ></td>
                                </tr>
                            </table>
                        </form>

                        <c:if test="${msj!=null}">
                            <div class="alert alert-warning">${msj}</div>
                        </c:if>
                    </div>



                    <div class="col-3"></div>

                </div>
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
