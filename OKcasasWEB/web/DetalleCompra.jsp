<%-- 
    Document   : DetalleCompra
    Created on : 10-06-2020, 17:39:24
    Author     : lanxi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<link href="CSS/Style.css" rel="stylesheet" type="text/css"/>
<link href="CSS/StyleDetalleCompra.css" rel="stylesheet" type="text/css"/>
<title>Detalle Compra</title>
</head>


<body>
    <%@include file="index.jsp" %>

    <main class="main">

        <div class="containerbg">


            <div class="container containerazul mt-3 pt-3 pb-3">

                <div class="container containerblanco mt-3 mb-3 pt-2 pb-2">
                    <h1 class="text-center">Servicios Contratados:</h1>
                </div>

                <div class="row mt-1 text-center">

                    <div class="container col-6">

                        <c:if test="${1==1}">
                            <p>Verificación de instalaciones y terminaciones</p>
                            <hr>
                        </c:if>

                        <c:if test="${1==1}">
                            <p>Medición de metros cuadrados de la vivienda</p>
                            <hr>
                        </c:if>

                        <c:if test="${1==1}">
                            <p>Inspección de luz, instalaciones sanitarias y gas</p>
                            <hr>
                        </c:if>

                        <c:if test="${1==1}">
                            <p>Termografías</p>
                        </c:if>



                    </div>

                    <div class="container col-6">
                        <c:if test="${1==1}">
                            <p>$ 13.990</p>
                            <hr>
                        </c:if>

                        <c:if test="${1==1}">
                            <p>$ 14.990</p>
                            <hr>
                        </c:if>

                        <c:if test="${1==1}">
                            <p>$ 25.990</p>
                            <hr>
                        </c:if>

                        <c:if test="${1==1}">
                            <p>$ 38.990</p>
                        </c:if>

                    </div>

                </div>


                <div class="container containerblanco mt-3 mb-3 pt-3 pb-3">

                    <div class="row text-center">
                        <div class="container col-6">
                            <h3>Sub Total:</h3>
                            <h3>Descuentos Socio:</h3>
                            <hr>
                            <h2>Total:</h2>
                        </div>
                        <div class="container col-6">
                            <h3>$ 93.960</h3>
                            <h3>$ 14.094</h3>
                            <hr>
                            <h2>$ 79.866</h2>
                        </div>
                    </div>

                </div>

                <div class="container text-center">
                    <a href="#" class="btn btn-lg btn-danger">Cancelar</a>
                    <a href="#" class="btn btn-lg btn-primary">Pagar</a>
                </div>

            </div>


        </div>

    </main>


    <footer class= "footer">
        <div class= "container">
            <p>Pagina diseñada por Grupo 4</p>
        </div>
    </footer>


</body>
</html>