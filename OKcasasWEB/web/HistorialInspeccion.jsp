<%-- 
    Document   : HistorialInspeccion
    Created on : 10-06-2020, 17:40:36
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


<title>Historial inspeccion
</title>
</head>

<header class="header">
    <div class="container logo-nav-container">
        <a href="index.html" class="logo"><img width="55px" height="55px" src="https://cdn.freebiesupply.com/logos/large/2x/ok-1-logo-png-transparent.png"></a>            <nav class="navigation">
                <ul class="show">
                    <li><a href="index.html">Inicio</a></li>
                    <li><a href="#">Solicitar inspeccion</a></li>
                    <li><a href="#">Historial</a></li>
                    <li><a href="#">Seguimiento</a></li>
                    <li><a href="#">Salir</a></li>
                </ul>
            </nav>
    </div>
</header>

<body
    <%@include file="index.jsp" %>
    
    <main class="main">

        <div class="container containerazul mt-3 mb-3 pt-3 pb-3">

            <h1 class="text-center">Historial de Inspecciones</h1>

            <div class="container text-center">
                <img id="foto1" src="https://www.condominioalcazar.cl/wp-content/uploads/2019/05/BannerCasas-Interior.png" alt="">
            </div>
        
            <div class="container containerblanco mt-3 pt-3 pb-3">

                <div class="row text-center">

                    <div class="container col-3">

                        <h3>ID</h3>
                        <hr>
                        <p>1</p>
                        <p>2</p>
                        <p>3</p>
                        <p>4</p>
                        <p>5</p>

                    </div>

                    <div class="container col-3">

                        <h3>Inmueble</h3>
                        <hr>
                        <p>Departamento</p>
                        <p>Casa</p>
                        <p>Departamento</p>
                        <p>Casa</p>
                        <p>Casa</p>

                    </div>

                    <div class="container col-3">

                        <h3>Dirección</h3>
                        <hr>
                        <p>Av. Los Toros</p>
                        <p>Av. Concha y toro</p>
                        <p>Av. Los Manantiales</p>
                        <p>Av. La Florida</p>
                        <p>Av. Gabriela</p>

                    </div>

                    <div class="container col-3">

                        <h3>Fecha</h3>
                        <hr>
                        <p>20/05/2018</p>
                        <p>15/03/2019</p>
                        <p>04/11/2017</p>
                        <p>10/02/2019</p>
                        <p>26/09/2017</p>

                    </div>


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