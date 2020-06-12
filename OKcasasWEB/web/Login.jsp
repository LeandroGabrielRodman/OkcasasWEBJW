

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="Description" content="Enter your description here"/>


<link rel="stylesheet" href="css/styleLogin.css">
<title>Login</title>
</head>
<body>
    <%@include file="index.jsp" %>

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
    
    
    


</body>
</html>