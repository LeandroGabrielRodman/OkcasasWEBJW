<%-- 
    Document   : SeguimientoInspeccion
    Created on : 10-06-2020, 17:39:59
    Author     : lanxi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>

<link href="CSS/Style.css" rel="stylesheet" type="text/css"/>
<link href="CSS/StyleSeguimientoInspeccion.css" rel="stylesheet" type="text/css"/>

<title>Seguimiento de Inspeccion</title>
</head>
<body>
    <%@include file="index.jsp" %>

    <div class="containerbg">


        <div class="container containerazul mt-5 pb-5 ">

            <div class="container pt-2 pb-2">
                <h1 class="text-center">Seguimiento de la Inspección</h1>
            </div>

            <div class="container">

                <div class="container text-center pt-2 mb-5">
                    <form class="container" action="servletSeguimiento" method="POST">
                        <div class="row">
                            <div class="col mt-3 ml-3">
                                <input type="number" class="form-control" placeholder="Ingrese Código de Seguimiento" name="txtCodigo" required>
                            </div>

                            <div class="col">
                                <button type="submit" class="btn btn-primary mt-3 mb-5">Buscar Inspección</button>
                            </div>
                        </div>
                    </form>
                    <p>A continuación, se mostrará el progreso de la inspección solicitada</p>
                </div>



            </div>
            <div class="container containerblanco mt-3 pb-3">

                <c:if test="${etapa==1}">

                    <div class="container pt-3">

                        <div class="progress">
                            <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 20%">20%</div>
                        </div>

                    </div>

                    <div class="container mt-3">
                        <p>Su solicitud ya ha sido recibida y esta a la espera de que un miembro del equipo técnico se encargue de ella.</p>
                    </div>

                </c:if>

                <c:if test="${etapa==2}">

                    <div class="container pt-3">

                        <div class="progress">
                            <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
                        </div>

                    </div>

                    <div class="container mt-3">
                        <p>Su solicitud fué acogida por un miembro del equipo técnico. Se procederá a visitar el domicilio en el horario indicado.</p>
                    </div>

                </c:if>

                <c:if test="${etapa==3}">

                    <div class="container pt-3">

                        <div class="progress">
                            <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 60%">60%</div>
                        </div>

                    </div>

                    <div class="container mt-3">
                        <p>Su inmueble actualmente está siendo inspeccionado y chequeado por miembros del equipo técnico de OKCasas.</p>
                    </div>

                </c:if>

                <c:if test="${etapa==4}">

                    <div class="container pt-3">

                        <div class="progress">
                            <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 80%">80%</div>
                        </div>

                    </div>

                    <div class="container mt-3">
                        <p>El personal está realizando un detalle de las inspecciones solicitadas y pronto se le entregará un informe a la brevedad posible.</p>
                    </div>

                </c:if>

                <c:if test="${etapa==5}">

                    <div class="container pt-3">

                        <div class="progress">
                            <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 100%">100%</div>
                        </div>

                    </div>

                    <div class="container mt-3">
                        <p>El informe fué completado de manera exitosa, se le ha enviado una copia a su correo y se han finalizado los servicios de OKCasas. Muchas gracias por preferirnos.</p>
                    </div>

                </c:if>


            </div>


        </div>


    </div>



</body>

<footer class="footer text-center">

    <p class="footerr">
        2020 @OKCASAS.COM Todos los derechos reservados
    </p>

</footer>


</html>