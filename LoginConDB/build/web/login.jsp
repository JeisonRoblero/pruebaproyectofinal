<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="utils/DataBaseAccess.jsp"%>
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

<div style="padding-top: 90px; padding-bottom: 90px; padding-left: 30px; padding-right: 30px">
    <form method="post" action="ValidateUser.jsp" class="col s12" style="background-color: rgba(46, 64, 83, 0.7); border-radius: 20px; padding: 10px">
        <center><label><h4 style="margin-top: 0; background-color: darkred; padding: 10px; color: white; border-radius: 20px;"><i class="material-icons" style="font-size: 30px">vpn_key</i> INICIAR SESI&Oacute;N </h4></label></center>

        <div class="row">
            <div class="input-field col s12">
                <i class="prefix"><img src="imagenes/email-icon.png" alt="email" width="45cm"
                                       height="45cm" ></i>
                <input name="txtmail" id="email" name="email" type="email" class="validate" style="color: white">
                <label for="email">Email</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s12">
                <i class="prefix"><img src="imagenes/key-icon.png" alt="email" width="45cm"
                                       height="45cm" ></i>
                <input name="txtpass" id="password" name="password" type="password" class="validate" style="color: white">
                <label for="password">Password</label>
            </div>
        </div>

        <div class="center">
            <button name="btnlogin" class="btn waves-effect waves-light" style="width: auto; height: auto; font-size: 16px;"  >Iniciar Sesi&oacute;n
                <i class="material-icons right" style="font-size: 16px">send</i>
            </button>
        </div>


        <div class="center">
            <br>
            <a href="signup.jsp" class="btn waves-effect waves-light" style="width: auto; height: auto; font-size: 16px; background-color: green" type="submit">No tengo cuenta
                <i class="material-icons right" style="font-size: 16px">account_box</i>
            </a>

        </div>

    </form>
</div>



<img src="imagenes/login-fondo.jpg" alt="sign up" style="position: fixed; bottom: 0px; right: 0px; z-index: -1000; overflow: hidden;
">

<jsp:include page="pie.jsp"/>


</body>