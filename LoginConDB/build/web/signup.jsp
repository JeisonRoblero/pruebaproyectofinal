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

<%

    String nombre = request.getParameter("txtnombre");
    String apellido = request.getParameter("txtapellido");
    String email = request.getParameter("txtemail");
    String contra = request.getParameter("txtpass1");
    String contra2 = request.getParameter("txtpass2");

    
    if (nombre!=null && apellido!=null && email!=null && contra!=null && contra==contra2){
        String query = "INSERT INTO admin(nombre,lastname,email,contra,fecha_registro)" +
                " VALUES ('"+nombre+"','"+apellido+"','"+email+"','"+contra+"','"+new java.util.Date()+"')";

        sql.executeUpdate(query);
      
        session.setAttribute("email", email);
        response.sendRedirect("loginactivo.jsp");
        
        
    
    }else{
%>

<jsp:include page="cabecera.jsp"/>

<div style="padding-top: 35px; padding-bottom: 35px; padding-left: 25px; padding-right: 25px">

    <form class="col s12" style="background-color: rgba(46, 64, 83, 0.7); border-radius: 20px; padding: 10px" name="frmregistro" method="post">
        <center><label><h4 style="margin-top: 0; background-color: cadetblue; padding: 10px; color: white; border-radius: 20px;"><i class="material-icons" style="font-size: 30px">vpn_key</i> REGISTRATE</h4></label></center>

        <div class="row">
            <div class="input-field col s6">
                <i class="prefix"><img src="imagenes/user-icon.png" alt="email" width="45cm"
                                       height="45cm" ></i>
                <input name="txtnombre" id="name" type="text" class="validate" style="color: white">
                <label for="name">Name</label>
            </div>
            <div class="input-field col s6">
                <i class="prefix"><img src="imagenes/user-icon.png" alt="email" width="45cm"
                                       height="45cm" ></i>
                <input name="txtapellido" id="last_name" type="text" class="validate" style="color: white">
                <label for="last_name">Last Name</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s12">
                <i class="prefix"><img src="imagenes/email-icon.png" alt="email" width="45cm"
                                       height="45cm" ></i>
                <input name="txtemail" id="email" type="email" class="validate" style="color: white">
                <label for="email">Email</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s12">
                <i class="prefix"><img src="imagenes/key-icon.png" alt="email" width="45cm"
                                       height="45cm" ></i>
                <input name="txtpass1" id="password" type="password" class="validate" style="color: white">
                <label for="password">Password</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s12">
                <i class="prefix"><img src="imagenes/key-icon.png" alt="email" width="45cm"
                                       height="45cm" ></i>
                <input name="txtpass2" id="passwordconfirm" type="password" class="validate" style="color: white">
                <label for="passwordconfirm">Confirm Password</label>
            </div>
        </div>

        <div class="center">

            <button name="registrar" class="btn waves-effect waves-light" style="width: auto; height: auto; font-size: 16px; background-color: green" type="submit">Registrarme
                <i class="material-icons right" style="font-size: 16px">send</i>
            </button>

        </div>


        <br>
        <div class="center">

            <a href="login.jsp" class="btn waves-effect waves-light" style="width: auto; height: auto; font-size: 16px; background-color: darkred" type="submit">Ya tengo una cuenta
                <i class="material-icons right" style="font-size: 16px">check_circle</i>
            </a>

        </div>

    </form>
</div>

<jsp:include page="pie.jsp"/>

<img src="imagenes/signup.jpg" alt="sign up" style="position: fixed; bottom: 0px; right: 0px; z-index: -1000; overflow: hidden;
">

<%}%>

</body>