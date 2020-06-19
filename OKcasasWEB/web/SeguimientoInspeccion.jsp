<%-- 
    Document   : SeguimientoInspeccion
    Created on : 10-06-2020, 17:39:59
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

        <title>Seguimiento de Inspeccion</title>
    </head>
    <body>
        <%@include file="index.jsp" %>



        <div class="container containerazul mt-5 pb-5 ">

            <div class="container pt-2 pb-2">
                <h1 class="text-center">Seguimiento de la Inspección</h1>
            </div>

            <div class="container">

                <div class="container text-center pt-2 mb-5">
                    <p>A continuación, se mostrará el progreso de la inspección solicitada</p>
                </div>

                <div class="progress">
                    <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 25%">25%</div>
                </div>

            </div>
            <div class="container containerblanco mt-3">

                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Animi inventore maxime laborum, molestias odio voluptatum corrupti, eos nisi deleniti aut facere accusamus natus qui. Illo amet enim quas voluptas pariatur?</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi ipsa qui quidem molestiae neque repellendus voluptate quo? Voluptatem maxime, corrupti cumque fugit delectus ratione dolores perferendis nulla a quod doloribus.</p>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aliquid, eius omnis repellat ipsum iusto saepe tempora praesentium exercitationem debitis vel ad rerum quibusdam laudantium minus earum dolorum culpa error non.</p>

                <div class="container text-center">
                    <a class="btn btn-primary btn-lg mb-2" href="#">Ver Informe</a>
                </div>

            </div>


        </div>





    </body>

    <footer class="footer text-center">
        <div class="container-footer">
            <p>
                2020 @OKCASAS.COM Todos los derechos reservados
            </p>
        </div>
    </footer>

</html>