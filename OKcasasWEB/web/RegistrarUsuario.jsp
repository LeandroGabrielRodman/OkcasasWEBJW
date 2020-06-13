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

<title>Registro</title>
</head>



<body>
<%@include file="index.jsp" %>

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


</html>