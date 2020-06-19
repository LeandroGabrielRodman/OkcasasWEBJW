<%-- 
    Document   : DetalleCompra
    Created on : 10-06-2020, 17:39:24
    Author     : lanxi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>


<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="Description" content="Enter your description here"/>
<link rel="stylesheet" href="assets/css/style.css">
<title>Detalle Compra</title>
</head>


<body>
    <%@include file="index.jsp" %>
    
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


     <footer class="footer text-center">
        <div class="container-footer">
            <p>
                2020 @OKCASAS.COM Todos los derechos reservados
            </p>
        </div>
    </footer>

</body>
</html>
