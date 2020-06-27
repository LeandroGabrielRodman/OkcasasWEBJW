<%-- 
    Document   : index
    Created on : 10-06-2020, 17:38:50
    Author     : lanxi
--%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link href="CSS/Style.css" rel="stylesheet" type="text/css"/>
        <title></title>
    </head>

    <body>


        <nav class="navbar navbar-expand-lg navbar-toggler bg-dark " >
            <img src="IMG/circle-cropped.png" width="75px">
            <div class="container-fluid">

                <ul class="nav navbar-nav ">
                    <li class="nav-item"><a href="Inicio.jsp" class="nav-link">Inicio</a></li>
                        <c:if test="${tipo!=null}">
                            <c:if test="${tipo=='A'}">
                            <!OPCIONES DEL ADMINISTRADOR>
                            <li class="nav-item"><a href="SolicitudInspeccion.jsp" class="nav-link">Solicitar inspección</a></li>
                            <li class="nav-item"><a href="HistorialInspeccion.jsp" class="nav-link">Historial de inspecciones</a></li>
                            <li class="nav-item"><a href="SeguimientoInspeccion.jsp" class="nav-link">Seguimiento de proceso de inspección</a></li>
                                                        <li class="nav-item"><a href="InspeccionesSolicitadas.jsp" class="nav-link">Calendario de inspecciones solicitadas</a></li>
                            <li class="nav-item"><a href="Ayuda.jsp" class="nav-link">Ayuda</a></li>
                            </c:if>
                            <c:if test="${tipo=='C'}">
                            <!OPCIONES DEL CLIENTE>
                            <li class="nav-item"><a href="SolicitudInspeccion.jsp" class="nav-link">Solicitar inspección</a></li>
                            <li class="nav-item"><a href="HistorialInspeccion.jsp" class="nav-link">Historial de inspecciones</a></li>
                            <li class="nav-item"><a href="SeguimientoInspeccion.jsp" class="nav-link">Seguimiento de proceso de inspección</a></li>
                            <li class="nav-item"><a href="Ayuda.jsp" class="nav-link">Ayuda</a></li>
                            </c:if>
                            <c:if test="${tipo=='T'}">
                            <!OPCIONES DEL TECNICO>
                            <li class="nav-item"><a href="InspeccionesSolicitadas.jsp" class="nav-link">Calendario de inspecciones solicitadas</a></li>
                            <li class="nav-item"><a href="Ayuda.jsp" class="nav-link">Ayuda</a></li>
                            </c:if>
                        </c:if>

                </ul>
                <ul class="nav navbar-nav navbar-right">
                        <c:if test="${tipo!=null}">
                        <!OPCIONES DE INICIO DE SESION>
                        <li class="nav-item"><a href="servletLogin" class="nav-link">Cerrar Sesión</a></li>
                        </c:if>
                        <c:if test="${tipo==null}">
                        <li class="nav-item "><a href="Login.jsp" class="nav-link ">Iniciar Sesión</a></li>
                        <li class="nav-item "><a href="RegistrarUsuario.jsp" class="nav-link ">Crear cuenta</a></li>
                        </c:if>

                </ul>
            </div>

        </nav>
    </body>
</html>