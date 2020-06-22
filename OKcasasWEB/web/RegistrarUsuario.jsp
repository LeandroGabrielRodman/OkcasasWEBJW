<%-- 
    Document   : RegistrarUsuario
    Created on : 10-06-2020, 17:39:10
    Author     : lanxi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link href="CSS/Style.css" rel="stylesheet" type="text/css"/>
<script src="JS/ValidacionPassword.js" type="text/javascript"></script>
<link href="CSS/StyleRegistrarUsuario.css" rel="stylesheet" type="text/css"/>

<title>Registro</title>
</head>


<%@include file="index.jsp" %>

<main class="main mt-5">

    <div class="containerbg">

        <div class="container col-9 contenedor-formulario">

            <h1 class="pt-5 mb-4 text-center">Registro de Usuario</h1>

            <div class="text-center mb-3">

                <img src="IMG/foto_registro_div.jpg" width="100%" alt="foto_registro_div"/>

            </div>

            <c:if test="${msj!=null}">
                <div class="alert alert-success mt-3 text-center">${msj}</div>
            </c:if>

            <c:if test="${err!=null}">
                <div class="alert alert-danger mt-3 text-center">${err}</div>
            </c:if>

            <form action="servletAgregar" class="needs-validation" method="POST">

                <div class="row">

                    <div class="row col-6 ml-3">

                        <div class="col">

                            <div class="mb-2">
                                <label for="Rut">RUT:</label>
                                <input type="text" class="form-control" placeholder="Ingrese RUT" name="txtRut" required>
                            </div>

                            <div class="mb-2">
                                <label for="Usuario">Usuario:</label>
                                <input type="text" class="form-control" placeholder="Ingrese Usuario" name="txtUsuario" required>
                            </div>

                            <div class="mb-2">
                                <label for="Nombre">Nombre:</label>
                                <input type="text" class="form-control" placeholder="Ingrese Nombre" name="txtNombre" required>
                            </div>

                            <div class="mb-2">
                                <label for="Apellido">Apellido:</label>
                                <input type="text" class="form-control" placeholder="Ingrese Apellido" name="txtApellido" required>
                            </div>

                            <div class="mb-2">
                                <label for="Email">Email:</label>
                                <input type="email" class="form-control" placeholder="Ingrese Email" name="txtEmail" required>
                            </div>

                            <div class="mb-2">
                                <label for="Celular">Numero de Celular:</label>
                                <input type="number" class="form-control" placeholder="Ingrese Celular" name="txtCelular" required>
                            </div>

                            <div class="mb-2">
                                <label for="FechaNacimiento">Fecha de Nacimiento:</label>
                                <input type="text" class="form-control" placeholder="Ingrese Fecha dd/mm/aa" name="txtFechaNacimiento" required>
                            </div>

                        </div>

                    </div>


                    <div class="row col-6">

                        <div class="col">

                            <div class="mb-2">
                                <label for="Direccion">Dirección:</label>
                                <input type="text" class="form-control" placeholder="Ingrese Dirección" name="txtDireccion" required>
                            </div>

                            <div class="mb-2">
                                <label for="Telefono">Telefono:</label>
                                <input type="number" class="form-control" placeholder="Ingrese Telefono" name="txtTelefono" required>
                            </div>

                            <div class="mb-2">
                                <label for="Sexo">Sexo:</label>
                                <input type="text" class="form-control" placeholder="Ingrese Sexo M o F" name="txtSexo" required>
                            </div>

                            <div class="mb-2">
                                <label for="Ciudad">Ciudad</label>
                                <input type="text" class="form-control" placeholder="Ingrese Ciudad" name="txtCiudad" required>
                            </div>

                            <div class="mb-2">
                                <label for="Contrasena">Contraseña:</label>
                                <input type="password" class="form-control" placeholder="Ingrese Contraseña" id="password" name="txtContrasena" required>
                            </div>

                            <div class="mb-2">
                                <label for="ContrasenaConf">Repetir Contraseña:</label>
                                <input type="password" class="form-control" placeholder="Repetir Contraseña" id="confirm_password" required>
                            </div>

                            <div class="mb-2 mt-4 text-center">
                                <button type="submit" onclick="return Validate()" class="btn btn-primary mt-3 mb-5">Registrarse</button>
                            </div>

                        </div>

                    </div>

                </div>


            </form>


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