<%-- 
    Document   : header
    Created on : 7/11/2024, 01:16:55 PM
    Author     : CruzF
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Agregar Font Awesome para los íconos -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <style>
            .bgColor {
                background-color: #E58A56;
                color: white;
            }
            .logo {
                width: 100px;
                height: 60px;
            }
            .navbar {
                padding: 0.5rem 1rem;
            }
            .custom-hr {
                width: 95%; /* Ajusta el ancho para que no llegue a las orillas */
                margin: 0 auto; /* Centra el hr */
                border: 0;
                border-top: 2px solid black; /* Personaliza el color y estilo de la línea */
            }
            .back-icon {
                font-size: 1.5rem; /* Ajusta el tamaño del ícono */
                color: #000; /* Color de la flecha */
                margin-left: 10px; /* Espacio entre la flecha y el borde izquierdo */
            }
            /* Aplicar margin-left a todo el contenedor */
            .container {
                margin-left: 65px;
            }
            /* Eliminar subrayado en la flecha */
            .navbar .d-flex a {
                text-decoration: none;
            }
            @media (max-width: 580px) {
                .logo {
                    width: 70px;
                    height: 50px;
                }
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-sm navbar-white bg-white">
            <div class="container d-flex justify-content-between">
                <!-- Ícono de la flecha hacia la izquierda en la parte izquierda -->
                <a href="#" class="d-flex align-items-center">
                    <i class="fas fa-arrow-left back-icon"></i>
                </a>
                <div class="d-flex justify-content-center w-100">
                    <a class="navbar-brand" href="#">
                        <img src="../../assets/FoodFlow Logo.png" class="logo" alt="LOGO">
                    </a>
                </div>
            </div>
        </nav>
        <hr class="custom-hr">
    </body>
</html>
