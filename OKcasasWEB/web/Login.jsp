
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="Description" content="Enter your description here"/>
        <link href="CSS/StyleLogin.css" rel="stylesheet" type="text/css"/>
        <title>Login</title>
    </head>
    <body>

        <div class="container">
            <form action="servletLogin" method="POST">  
                <div class="login">
                    <div class="login-screen">
                        <div class="app-title">
                            <h1>Iniciar Sesión</h1>
                            <img src="IMG/circle-cropped.png" class="icon" alt=""/>
                        </div>
                        <br>
                        <div class="login-form">
                            <div class="control-group">
                                <img src="IMG/login.png" width="20px">
                                <input type="text" class="login-field" value="" name="txtUsuario" placeholder="Usuario" id="login-name" required>

                            </div>

                            <div class="control-group">
                                <img src="IMG/password.png" width="20px">
                                <input type="password" class="login-field" value="" name="txtContrasena" placeholder="Contraseña" id="login-pass" required>

                            </div>
                            <c:if test="${err!=null}">
                                <div class="alert alert-danger">${err}</div>
                            </c:if>
                            <input type="submit" class="btn btn-primary btn-large btn-block " name="btnLogin" value="Entrar">
                            <a class="login-link" href="#">Olvide mi contraseña</a>
                            <a class="login-link" href="RegistrarUsuario.jsp">No tienes cuenta? Unete!</a>
                        </div>
                    </div>
                </div>
            </form>


        </div>

    </body>


</html>