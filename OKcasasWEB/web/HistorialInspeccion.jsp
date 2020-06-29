<%-- 
    Document   : HistorialInspeccion
    Created on : 10-06-2020, 17:40:36
    Author     : lanxi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="CSS/Style.css" rel="stylesheet" type="text/css"/>
<link href="CSS/StyleHistorialInspeccion.css" rel="stylesheet" type="text/css"/>
<title>Historial inspeccion
</title>
</head>

<body
    <%@include file="index.jsp" %>

    <main class="main">

        <div class="containerbg">

            <div class="container containerazul mt-3 mb-3 pt-3 pb-3">

                <h1 class="text-center">Historial de Inspecciones</h1>

                <div class="container text-center">
                    <img id="foto1" src="https://www.condominioalcazar.cl/wp-content/uploads/2019/05/BannerCasas-Interior.png" alt="">
                </div>

                <form class="container" action="servletListar" method="POST">

                    <div class="row">
                        <div class="col mt-3 ml-3">
                            <input type="number" class="form-control" placeholder="Ingrese RUT" name="txtRut" required>
                        </div>
                        
                        <div class="col">
                            <button type="submit" class="btn btn-primary mt-3 mb-5">Buscar Inspección</button>
                        </div>
                    </div>



                </form>

                <div class="container containerblanco mt-3 pt-3 pb-3">

                    <div class="row text-center">

                        <div class="container">

                            <table class="table table-striped">
                                <tr>
                                    <td>Dirección</td>
                                    <td>Tipo de Servicio</td>
                                    <td>Fecha</td>
                                    <td>Celular</td>
                                    <td>Correo</td>
                                    <td>Rut</td>
                                    <td>Etapa</td>
                                    <td>Código de Inspección</td>
                                    <td>Monto</td>
                                </tr>
                                <c:forEach var="inspeccion" items="${listado}">
                                    <tr>
                                        <td>${inspeccion.getDireccion()}</td>
                                        <td>${inspeccion.getTipo_servicio()}</td>
                                        <td>${inspeccion.getFecha()}</td>
                                        <td>${inspeccion.getCelular()}</td>
                                        <td>${inspeccion.getCorreo()}</td>
                                        <td>${inspeccion.getRut()}</td>
                                        <td>${inspeccion.getEtapa()}</td>
                                        <td>${inspeccion.getCodigo_inspeccion()}</td>
                                        <td>${inspeccion.getMonto()}</td>
                                    </tr>
                                </c:forEach>


                            </table>

                        </div>

                    </div>


                </div>



            </div>

        </div>


    </main>


    <footer class="footer text-center">
        <div class="container-footer">
            <p>
                2020 @OKCASAS.COM Todos los derechos reservados
            </p>
        </div>
    </footer>

</body>
</html>