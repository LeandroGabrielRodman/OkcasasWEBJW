<%-- 
    Document   : Login
    Created on : 10-06-2020, 17:39:01
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
<link rel="stylesheet" href="css/styleLogin.css">
<title>Login</title>
</head>
<body>

    <div class="contenedor-form mt-5">
        <div class="toggle">
            <a href="#">Crear Cuenta</a>
        </div>

        <div class="formulario">
            <h2>Iniciar sesion</h2>
            <form action="#">
                <input type="text" placeholder="Usuario" required>
                <input type="password" placeholder="Password" required>
                <input type="submit" value="Iniciar Sesion">
            </form>
        </div>
    
        <div class="reset-password">
            <a href="#">Olvide mi Contraseña</a>
        </div>

    </div>
    
    
    

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>