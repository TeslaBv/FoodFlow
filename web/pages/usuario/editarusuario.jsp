<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="controller.Usuario"%>
<%@page import="model.UsuarioDAO"%>
<%
    // Obtener el ID del usuario desde los parámetros de la solicitud
    String idUsuarioParam = request.getParameter("id");
    Usuario usuario = null;

    if (idUsuarioParam != null) {
        try {
            int idUsuario = Integer.parseInt(idUsuarioParam);
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            usuario = usuarioDAO.obtenerUsuarioPorId(idUsuario);
        } catch (NumberFormatException e) {
            System.err.println("ID de usuario inválido: " + e.getMessage());
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .logo {
                display: block;
                margin: 30 auto;
                width: 250px;
                height: auto;
            }
            .login-container {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .login-form {
                padding: 20px;
                border-radius: 8px;
                width: 100%;
                max-width: 400px;
                text-align: center;
            }
            .form-control {
                border: 2px solid #ec3718 !important;
            }
            .btn-login {
                background-color: #ec3718;
                border: none;
                color: white;
                padding: 10px;
                font-size: 16px;
                border-radius: 5px;
                transition: background-color 0.3s;
                margin-top: 10px;
            }
            .btn-login:hover {
                background-color: darkorange;
            }
            .form-label {
                font-weight: bold;
                margin-right: 10px;
                width: 150px;
            }
            .input-group {
                display: flex;
                align-items: center;
                margin-bottom: 15px;
            }
            .btn-delete {
                background-color: #ec3718;
                border: none;
                color: white;
                padding: 10px;
                font-size: 16px;
                border-radius: 5px;
                transition: background-color 0.3s;
                margin-top: 10px;
                
                   position: absolute; 
                 top: 568px; 
                 left: 820px; 
            }
            .btn-delete:hover {
                background-color: darkred;
            }
        </style>
    </head>
    <body>
        <%@include file="../../components/headerAdmin.jsp" %>
        <%@include file="../../components/sidebarAdmin.jsp" %>

        <div class="login-container">
            <img src="../../assets/FoodFlow Logo.png" class="logo" alt="LOGO">

            <div class="login-form">
                <%
                    if (usuario != null) {
                %>
                <form action="/crudusuario/editarusuario" method="post">
                    <!-- Campo oculto para el ID -->
                    <input type="hidden" name="id" value="<%= usuario.getId() %>">

                    <!-- Nombre -->
                    <div class="input-group">
                        <label for="nombre" class="form-label">Nombre(s):</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" value="<%= usuario.getNombre() %>" required>
                    </div>

                    <!-- Apellido Paterno -->
                    <div class="input-group">
                        <label for="apellidoPaterno" class="form-label">Apellido Paterno:</label>
                        <input type="text" class="form-control" id="apellidoPaterno" name="apellido_paterno" value="<%= usuario.getApellidoPaterno() %>" required>
                    </div>

                    <!-- Apellido Materno -->
                    <div class="input-group">
                        <label for="apellidoMaterno" class="form-label">Apellido Materno:</label>
                        <input type="text" class="form-control" id="apellidoMaterno" name="apellido_materno" value="<%= usuario.getApellidoMaterno() %>" required>
                    </div>
                    
                   
                    <!-- Correo Electrónico -->
                    <div class="input-group">
                        <label for="correo" class="form-label">Correo electrónico:</label>
                        <input type="email" class="form-control" id="correo" name="correo" value="<%= usuario.getCorreo() %>" required>
                    </div>

                    <!-- Rol -->
                    <div class="input-group">
                        <label for="rol" class="form-label">Rol:</label>
                        <select class="form-control" id="rol" name="rol" required>
                            <option value="" disabled <%= usuario.getRol() == null ? "selected" : "" %>>Seleccione un rol</option>
                            <option value="administrador" <%= "administrador".equals(usuario.getRol()) ? "selected" : "" %>>Administrador</option>
                            <option value="cocinero" <%= "cocinero".equals(usuario.getRol()) ? "selected" : "" %>>Cocina</option>
                            <option value="mesero" <%= "mesero".equals(usuario.getRol()) ? "selected" : "" %>>Mesero</option>
                            <option value="cajero" <%= "cajero".equals(usuario.getRol()) ? "selected" : "" %>>Cajero</option>
                        </select>
                    </div>

                    <!-- Botón de envío -->
                    <button type="submit" class="btn-login">Actualizar</button>
                </form>

                <!-- Formulario para eliminar usuario -->
                <form action="/crudusuario/eliminarusuario" method="post" style="margin-top: 20px;">
                    <input type="hidden" name="id" value="<%= usuario.getId() %>">
                    <button type="submit" class="btn-delete">Eliminar Usuario</button>
                </form>
                <%
                    } else {
                %>
                <p>No se encontró el usuario. <a href="/crudusuario/usuariosservlet">Volver</a></p>
                <%
                    }
                %>
            </div>
        </div>
    </body>
</html>
