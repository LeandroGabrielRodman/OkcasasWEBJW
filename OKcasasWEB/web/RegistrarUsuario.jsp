<%-- 
    Document   : RegistrarUsuario
    Created on : 10-06-2020, 17:39:10
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

<title>Registro</title>
</head>

<header class="header">
    <div class="container logo-nav-container">
        <a href="index.html" class="logo"><img width="55px" height="55px" src="https://cdn.freebiesupply.com/logos/large/2x/ok-1-logo-png-transparent.png"></a>
            <nav class="navigation">
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


    <main class="main mt-5">

        <div class="container col-9 contenedor-formulario">

            <h1 class="pt-5 mb-4 text-center">Registro de Usuario</h1>
            
            <div class="row">

                <form action="" class="needs-validation col-5">
                    <div class="col mb-2">
                        <label for="Nombre">Nombre:</label>
                        <input type="text" class="form-control" placeholder="Ingrese Nombre" id="Nombre" required>
                    </div>

                    <div class="col mb-2">
                        <label for="Apellido">Apellido:</label>
                        <input type="text" class="form-control" placeholder="Ingrese Apellido" id="Apellido" required>
                    </div>
                        
                    <div class="col mb-2">
                        <label for="Rut">RUT:</label>
                        <input type="text" class="form-control" placeholder="Ingrese RUT" id="Rut" required>
                    </div>

                    <div class="col mb-2">
                        <label for="Email">Email:</label>
                        <input type="email" class="form-control" placeholder="Ingrese Email" id="Email" required>
                    </div>

                    <div class="col mb-2">
                        <label for="Celular">Numero de Celular:</label>
                        <input type="text" class="form-control" placeholder="Ingrese Celular" required>
                    </div>

                    <div class="col mb-2">
                        <label for="Contrasena">Contraseña:</label>
                        <input type="password" class="form-control" placeholder="Ingrese Contraseña" required>
                    </div>

                    <div class="col mb-2">
                        <label for="ContrasenaConf">Repetir Contraseña:</label>
                        <input type="password" class="form-control" placeholder="Repetir Contraseña" required>
                    </div>

                    <div class="col mb-2">
                        <button type="submit" class="btn btn-primary mt-3 mb-5">Registrarse</button>
                    </div>
                    
                </form>

                <div class="container col-6 pr-5 pt-5">
                    <img id="foto1" src="https://lh3.googleusercontent.com/proxy/5-tZnFBgoxuNJMik-4_Sb2kNtog-2ZeN3ZIbEgEp4DEVO_QJ1AMaq4CouBsGZZLjaCACgOe5uMtiSKTxiczz-NJXfZeIlDlbBdhtHYVub-wNdCnkIGj9v23fdPqVbqvZA1MLXOleiREbmbXkxd3K" alt="">
                </div>


            </div>

           

            

        </div>
        
    </main>


</body>


<footer class= "footer">
    <div class= "container">
        <p>Pagina diseñada por Grupo 4</p>
    </div>
</footer>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
</html>