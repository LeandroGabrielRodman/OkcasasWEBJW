<%-- 
    Document   : Inicio
    Created on : 11-06-2020, 19:34:08
    Author     : lanxi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/Style.css"

    </head>
    <body>
        <%@include file="index.jsp" %>

        <c:if test="${tipo!=null}">
            <c:if test="${tipo=='A'}"> 
                <div class="alert alert-info">Bienvenido ${username}!</div>
            </c:if>
        </c:if>
        <c:if test="${tipo!=null}">
            <c:if test="${tipo=='C'}"> 
                <div class="alert alert-info">Bienvenido ${username}!</div>
            </c:if>
        </c:if>
         <c:if test="${tipo!=null}">
            <c:if test="${tipo=='T'}"> 
                <div class="alert alert-info">Bienvenido ${username}!</div>
            </c:if>
        </c:if>

        <div id="demo" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="IMG/carrusel 1.jpg" width="100%" alt="">
                </div>
                <div class="carousel-item">
                    <img src="IMG/carrusel 2.jpg" width="100%" alt="">
                </div>
                <div class="carousel-item">
                    <img src="IMG/carrusel 3.jpg" width="100%" alt="">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>

        </div>

        <div class="Contenedor-parrafo">
            <div class="row">
                <!-- Parrafo izquierdo  -->
                <div class="col-4 " style=" background-color:#333 ">
                    <p class="font_8">
                        <span class="Titulos text-center"> ¿QUE HACEMOS?
                        </span>
                        <br>
                        <span class="parrafos text-center">
                            Nuestros profesionales de planta y el mejor equipamiento, someten su inmueble (casa, departamento, oficina o espacios comunes),
                            a la Inspección de Propiedades más completa y efectiva del mercado, permitiendo entregar un sólido y respetado informe técnico fotográfico, 
                            que exigirá las reparaciones respectivas, bajando un 98% la post venta inmobiliaria y sus malos ratos.
                        </span>
                    </p>
                </div> 

                <!-- Parrafo central  -->
                <div class="col-4" style="background-color: #5D5D5D">
                    <p class="font_8">
                        <span class="Titulos text-center"> 
                            NUESTRO SERVICIO SE BASA EN 

                        </span>
                        <br>
                        <span class="parrafos-2 text-center">
                            -Verficacion de instalaciones y terminaciones <br>
                            -Medicion de metros cuadrados de la vivienda <br>
                            -Inspección de luz,instalaciones sanitarias y gas <br>
                            -Termografías 
                            <br>
                            <img src="IMG/circle-cropped.png" width="100px"
                        </span>
                    </p>
                </div>

                <!-- Parrafo Derecho  -->
                <div class="col-4" style="background-color: #00aae4"> 
                    <p class="font_8">
                        <span class="Titulos1 text-center"> ¿COMO TRABAJAMOS?
                        </span>
                        <br>
                        <span class="parrafos-3">
                            -Solicite su inspeccion

                        </span>  
                    <p class="ParrafoP">
                        Someta su inmueble a la inspeccion más completa y efectiva del mercado.
                    </p>
                    <span class="parrafos-3">
                        -Inspeccionamos su inmueble    
                    </span>  
                    <p class="ParrafoP">
                        Personal altamente capacitado y la mejor tecnologia disponible para usted.
                    </p>
                    <span class="parrafos-3">
                        -Emitimos un sólido informe 
                    </span>  
                    <p class="ParrafoP">
                        Sumamente respetado,con asistencia y respaldo OKCasas.
                    </p>
                    <span class="parrafos-3">
                        - Chequeamos las reparaciones
                    </span>
                    <p class="ParrafoP">
                        Revisamos las reparaciones y su enterno,identificando daños colaterales.
                    </p>
                    <span class="parrafos-3">
                        - Recepciona con tranquilidad!
                    </span>
                    <p class="ParrafoP">
                        Viva la experiencia OKCasas,
                        Clientes 100% Satisfechos
                    </p> 
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
