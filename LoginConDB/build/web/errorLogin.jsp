<%-- 
    Document   : errorLogin
    Created on : 1 nov. 2021, 00:57:07
    Author     : jeyso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prestamo de VideoJuegos</title>

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="icon" type="image/png" href="imagenes/gamepad.png">

    </head>
    <body>
        <jsp:include page="cabecera.jsp"/>
        
        <section style="min-height: 600px; padding: 30px">
            <div style="padding-top: 90px; padding-bottom: 90px; padding-left: 30px; padding-right: 30px">
                <form class="col s12" style="background-color: rgba(46, 64, 83, 0.7); border-radius: 20px; padding: 10px">
                    <center><label><h4 style="margin-top: 0; background-color: darkred; padding: 10px; color: white; border-radius: 20px;"><i class="material-icons" style="font-size: 30px">error</i> Error al iniciar sesi&oacute;n :( </h4></label></center>

                    <h4 style="color: white; padding: 30px">El usuario o contraseña no coinciden, asegurate de tener una cuenta con nosotros 
                    </h4> 
                    
                    <div class="center">

                        <a href="login.jsp" class="btn waves-effect waves-light" style="width: auto; height: auto; font-size: 16px; background-color: darkred" type="submit">Regresar
                            <i class="material-icons left" style="font-size: 16px">arrow_back</i>
                        </a>

                    </div>
                
                </form>
            </div>
            
        </section>            
        
        
        
        <img src="imagenes/login-fondo.jpg" alt="sign up" style="position: fixed; bottom: 0px; right: 0px; z-index: -1000; overflow: hidden;
">

<jsp:include page="pie.jsp"/>
    </body>
</html>
