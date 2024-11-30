<%-- 
    Document   : pago
    Created on : 15/11/2024, 02:29:27 PM
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
        <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@600&display=swap" rel="stylesheet">
    </head>
    <body>
        <%@include file="../../components/headerPago.jsp" %>



        <!-- Modal -->
        <div class="modal fade" id="welcomeModal" tabindex="-1" aria-labelledby="fidelidadModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" style="max-width: 600px;">
                <div class="modal-content" style="min-width: 600px;">
                    <div class="modal-body text-center" style="padding: 60px">
                        <hr style="border: 2px solid #000; margin-top: 10px; align-items: center; text-align: center; width: 100%;">
                        <p class="modal-title mb-4" id="fidelidadModalLabel" style="font-family: 'Fira Sans', sans-serif; font-weight: bold; font-size: 20px;">Fidelidad</p>
                        <div id="dynamicContent" class="d-flex" style="margin-bottom: 40px;">
                            <input id="phoneInput" style="margin-right: 100px" type="text" class="form-control me-2" placeholder="¿Tiene fidelidad?, ingresar teléfono.">
                            <button type="button" class="btn btn-outline-success" onclick="verifyPhone()">Verificar</button>
                        </div>

                        <hr style="border: 2px solid #000; margin-top: 10px; align-items: center; text-align: center; width: 100%; margin-bottom: 40px;">
                        <div id="buttonContainer">
                            <button type="button" style="background-color: transparent; border: 2px solid #EC3718; border-radius: 8px; color: #EC3718; height: 50px; width: 160px; text-shadow: none; font-family: 'Barlow', sans-serif; font-weight: 600;" data-bs-dismiss="modal">Cancelar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="paymentModal" tabindex="-1" aria-labelledby="paymentModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body text-center" style="padding: 60px">
                        <hr style="border: 2px solid #000; margin-top: 10px; align-items: center; text-align: center; width: 100%;">
                        <h4 style="font-family: 'Fira Sans', sans-serif; font-weight: bold;">Confirmar Pago</h4>
                        <p style="margin: 20px 0;">¿Estás seguro de la orden?</p>
                        <hr style="border: 2px solid #000; margin-top: 20px; margin-bottom: 40px; width: 100%;">
                        <div class="d-flex justify-content-center gap-3">
                            <button type="button" style="background-color: transparent; border: 2px solid #EC3718; border-radius: 8px; color: #EC3718; height: 50px; width: 160px; font-family: 'Barlow', sans-serif; font-weight: 600;" data-bs-dismiss="modal">Cancelar</button>
                            <button type="button" style="background-color: #EC3718; border: 2px solid #EC3718; border-radius: 8px; color: white; height: 50px; width: 160px; font-family: 'Barlow', sans-serif; font-weight: 600;" onclick="finalizePayment()">Continuar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <!-- Contenido de la página -->
        <div style="margin-left: 60px; padding: 20px; margin-top: 6px">
            <div class="d-flex" style="align-items: center; width: 100%;">
                <h1 style="font-family: 'Inter', sans-serif; font-weight: 700; margin-right: 79%;">BILL</h1>
                <button type="button" style="background-color: #EC3718; font-size: 20px; border: 2px solid; border-radius: 8px; color: white; height: 50px; width: 140px; font-family: 'Barlow', sans-serif;" onclick="showPaymentModal()">PAGAR</button>
            </div>
            <p style="margin-top: 10px; font-family:'Fire Mono',monospace "><span style='font-weight: bold; color: #333;'>Fecha:</span> June 6, 2020 <br>
                <span style='font-weight: bold; color: #333;'>Hora </span> 09:00 <br>
                <span style='font-weight: bold; color: #333;'>Orden </span> #2005
            </p>
        </div>

        <div style="margin-left: 60px; padding: 10px; ">
            <table style="width: 95%; border-collapse: collapse;">
                <thead>
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

        <div style="display: flex; align-items: center; justify-content: center; height: 30vh;">
            <div style="display: flex; align-items: center; justify-content: space-between; width: 60%; max-width: 800px;">
                <div style="flex: 1; margin-right: 10%">
                    <h5 style="font-weight: bold; margin-bottom: 8px; text-align: center;">Notas</h5>
                    <textarea style="width: 100%; height: 100px; border: 2px solid #5a5a5a; padding: 8px; resize: none; border-radius: 4px;"></textarea>
                </div>
                <div style="text-align: center;">
                    <h5 style="font-weight: bold; margin-bottom: 8px;">Servicio</h5>
                    <button style="padding: 8px 16px; border: 2px solid #ff4d4d; background-color: transparent; color: #ff4d4d; border-radius: 4px; cursor: pointer; font-weight: bold;">
                        Para Llevar
                    </button>
                </div>
            </div>
        </div>

        <div style="background-color: #CBF1F1; padding: 20px; margin-top: 28px; height: 186px">
            <h6 style="text-align: right; font-weight: bold; padding-right: 50px;">Total</h6>
            <hr style="border: 2px solid #000; margin-top: 10px;margin-left: 30px;width: 97%">
            <div style="text-align: right; font-size: 16px; padding-right: 50px;">
                <p style="margin: 5px 0;font-family: 'Fira Sans',sans-serif">Subtotal: <span style="margin-left: 40px;font-family:'Fire Mono',monospace">RM 119.50</span></p>
                <p style="margin: 5px 0;font-family: 'Fira Sans',sans-serif">Tax: <span style="margin-left: 95px;font-family:'Fire Mono',monospace">RM 5.98</span></p>
                <p style="margin: 5px 0;font-weight: bold;font-family: 'Fira Sans',sans-serif">Total: <span style="font-weight: bold;margin-left: 65px;font-family:'Fire Mono',monospace">RM 125.48</span></p>
            </div>
            <hr style="border: 2px solid #000; margin-top: 10px;margin-left: 30px;width: 97%">
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script>
                    window.onload = function () {
                        var myModal = new bootstrap.Modal(document.getElementById('welcomeModal'));
                        myModal.show();
                    };
        </script>

        <script>
            function verifyPhone() {
                const validPhone = "1234567891";
                const phoneInput = document.getElementById("phoneInput").value;
                const dynamicContent = document.getElementById("dynamicContent");
                const buttonContainer = document.getElementById("buttonContainer");

                if (phoneInput === validPhone) {
                    dynamicContent.innerHTML = `
                <div class="d-flex justify-content-center gap-3" style="margin-left: 70px;">
                    <button type="button" class="btn btn-outline-success" style="height: 40px; width: 160px;">Platillo Gratis</button>
                    <button type="button" class="btn btn-outline-purple" style="height: 40px; width: 160px; border-color: #6a1b9a; color: #6a1b9a;">Bebida Gratis</button>
                </div>
            `;

                    buttonContainer.innerHTML = `
                <button type="button" style="background-color: transparent; border: 2px solid #EC3718; border-radius: 8px; color: #EC3718; height: 50px; width: 160px; text-shadow: none; font-family: 'Barlow', sans-serif; font-weight: 600;" data-bs-dismiss="modal">Cancelar</button>
                <button id="continueButton" type="button" style="background-color: #EC3718; border: 2px solid #EC3718; border-radius: 8px; color: white; height: 50px; width: 160px; text-shadow: none; font-family: 'Barlow', sans-serif; font-weight: 600;" onclick="closeWelcomeModal()">Continuar</button>
            `;
                } else {
                    dynamicContent.innerHTML = `<p style="color: green; font-weight: bold; margin-left: 130px;">No tiene promociones activas</p>`;
                    setTimeout(() => {
                        dynamicContent.innerHTML = `
                    <input id="phoneInput" style="margin-right: 100px" type="text" class="form-control me-2" placeholder="¿Tiene fidelidad?, ingresar teléfono.">
                    <button type="button" class="btn btn-outline-success" onclick="verifyPhone()">Verificar</button>
                `;
                    }, 2000);

                    buttonContainer.innerHTML = `
                <button type="button" style="background-color: transparent; border: 2px solid #EC3718; border-radius: 8px; color: #EC3718; height: 50px; width: 160px; text-shadow: none; font-family: 'Barlow', sans-serif; font-weight: 600;" data-bs-dismiss="modal">Cancelar</button>
            `;
                }
            }

            function closeWelcomeModal() {
                // Cierra el modal de bienvenida
                const welcomeModal = bootstrap.Modal.getInstance(document.querySelector('#welcomeModal'));
                welcomeModal.hide();
            }

            function showPaymentModal() {
                // Muestra el modal de confirmación de pago
                const paymentModal = new bootstrap.Modal(document.getElementById('paymentModal'));
                paymentModal.show();
            }

            function finalizePayment() {
                alert('Pago confirmado. Gracias por tu orden.');
                const paymentModal = bootstrap.Modal.getInstance(document.querySelector('#paymentModal'));
                paymentModal.hide();
            }
        </script>
    </body>
</html>
