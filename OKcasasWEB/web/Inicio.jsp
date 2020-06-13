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
                <div class="col-4 resposive" style=" background-color:#333 ">
                    <p class="font_8">
                        <span class="Titulos text-center"> QUE HACEMOS?
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
                <div class="col-4 resposive" style="background-color: #5D5D5D">
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
                        </span>
                    </p>
                </div>
                
                <!-- Parrafo Derecho  -->
                <div class="col-4 resposive" style="background-color: darkcyan"> 
                    <p class="font_8">
                        <span class="Titulos text-center"> ¿COMO TRABAJAMOS?
                        </span>
                        <br>
                        <span class="parrafos-3 ">
                            -Solicite su inspeccion
                            <p class="ParrafoP">
                                Somteta su inmbueble a la inspeccion más
                                comlpleta y efectiva del mercado.
                            </p>
                        </span>  
                    </p>
                </div>
            </div>
        </div>

    </body>
</html>
