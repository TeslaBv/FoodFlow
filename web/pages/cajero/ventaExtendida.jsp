<%-- 
    Document   : ventaExtendida
    Created on : 15/11/2024, 02:18:23 PM
    Author     : swoke
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Fira+Mono:wght@400;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Fira+Sans&display=swap" rel="stylesheet">
    </head>
    <body>
        <%@include file="../../components/headerAdmin.jsp" %>
        <%@include file="../../components/sidebarCajero.jsp" %>

        <!-- Contenido de la página -->
        <div style="margin-left: 60px; padding: 20px; margin-top: 6px">
            <h1 style="font-family: 'Inter',sans-serif;font-weight: 700">BILL</h1>
            <p style="margin-top: 10px; font-family:'Fire Mono',monospace "><span style='font-weight: bold; color: #333;'>Fecha:</span> June 6, 2020 <br>
                <span style='font-weight: bold; color: #333;'>Hora </span> 09:00 <br>
                <span style='font-weight: bold; color: #333;'>Orden </span> #2005
            </p>
        </div>

        <div style="margin-left: 60px; padding: 10px; ">
            <table style="width: 95%; border-collapse: collapse;">
                <thead >
                    <tr>
                        <th style="padding: 8px 10px; text-align: left; font-weight: bold; border-bottom: 1px solid #000;">No.</th>
                        <th style="padding: 8px 10px; text-align: left; font-weight: bold; border-bottom: 1px solid #000;">Platillo</th>
                        <th style="padding: 8px 10px; text-align: left; font-weight: bold; border-bottom: 1px solid #000;">Precio Unitario</th>
                        <th style="padding: 8px 10px; text-align: left; font-weight: bold; border-bottom: 1px solid #000;">Cantidad</th>
                        <th style="padding: 8px 10px; text-align: left; font-weight: bold; border-bottom: 1px solid #000;">Subtotal</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="padding: 8px 10px;font-weight: bold;">1.</td>
                        <td style="padding: 8px 10px;font-weight: bold;">Shrimp Tempura</td>
                        <td style="padding: 8px 10px; font-weight: bold;">RM 23.90</td>
                        <td style="padding: 8px 10px;font-weight: bold;">2</td>
                        <td style="padding: 8px 10px; font-weight: bold;">RM 47.80</td>
                    </tr>
                    <tr>
                        <td style="padding: 8px 10px; font-weight: bold;">2.</td>
                        <td style="padding: 8px 10px;font-weight: bold;">Oyster Dynamite</td>
                        <td style="padding: 8px 10px; font-weight: bold;">RM 23.90</td>
                        <td style="padding: 8px 10px;font-weight: bold;">1</td>
                        <td style="padding: 8px 10px; font-weight: bold;">RM 23.90</td>
                    </tr>
                    <tr>
                        <td style="padding: 8px 10px; font-weight: bold;">3.</td>
                        <td style="padding: 8px 10px;font-weight: bold;">Fried Calamari Salad</td>
                        <td style="padding: 8px 10px; font-weight: bold;">RM 23.90</td>
                        <td style="padding: 8px 10px;font-weight: bold;">2</td>
                        <td style="padding: 8px 10px; font-weight: bold;">RM 47.80</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div style="text-align: center; margin-top: 20px;">
            <h5 style="font-weight: bold; margin-bottom: 8px;">Notas</h5>
            <textarea disabled style="width: 60%; height: 100px; border: 2px solid #000; padding: 8px; resize: none;">Los tacos sin verdura</textarea>
        </div>

        <div style="background-color: #f8d7da; padding: 20px; margin-top: 28px; height: 166px">
            <h6 style="text-align: right; font-weight: bold; padding-right: 50px;">Total</h6>
            
            <div style="text-align: right; font-size: 16px; padding-right: 50px;">
                <p style="margin: 5px 0;font-family: 'Fira Sans',sans-serif">Subtotal: <span style="margin-left: 40px;font-family:'Fire Mono',monospace">RM 119.50</span></p>
                <p style="margin: 5px 0;font-family: 'Fira Sans',sans-serif">Tax: <span style="margin-left: 95px;font-family:'Fire Mono',monospace">RM 5.98</span></p>
                <p style="margin: 5px 0;font-weight: bold;font-family: 'Fira Sans',sans-serif">Total: <span style="font-weight: bold;margin-left: 65px;font-family:'Fire Mono',monospace">RM 125.48</span></p>
            </div>
            <hr style="border: 2px solid #000; margin-top: 10px;margin-left: 70px;width: 95%">
        </div>


        <script>
            // Función para abrir/cerrar el sidebar
            function toggleSidebar() {
                document.getElementById("mySidebar").classList.toggle("open");
            }
        </script>
    </body>
</html>
