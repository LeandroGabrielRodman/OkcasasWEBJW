<%-- 
    Document   : DetalleCompra
    Created on : 10-06-2020, 17:39:24
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link rel="stylesheet" href="assets/css/style.css">
<title>Detalle Compra</title>
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

<body>
    
    <main class="main">

        <div class="container containerazul mt-3 pt-3 pb-3">

            <div class="container containerblanco mt-3 mb-3 pt-2 pb-2">
                <h1 class="text-center">Servicios Contratados:</h1>
            </div>
            
            <div class="row mt-1 text-center">

                <div class="container col-6">
                    <p>Verificación de instalaciones y terminaciones</p>
                    <hr>
                    <p>Medición de metros cuadrados de la vivienda</p>
                    <hr>
                    <p>Inspección de luz, instalaciones sanitarias y gas</p>
                    <hr>
                    <p>Termografías</p>
                </div>

                <div class="container col-6">
                    <p>$ 13.990</p>
                    <hr>
                    <p>$ 14.990</p>
                    <hr>
                    <p>$ 25.990</p>
                    <hr>
                    <p>$ 38.990</p>
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



        


    </main>


<footer class= "footer">
    <div class= "container">
        <p>Pagina diseñada por Grupo 4</p>
    </div>
</footer>

    
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>