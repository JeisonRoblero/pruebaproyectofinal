<%--
  Created by IntelliJ IDEA.
  User: jeyso
  Date: 29/10/2021
  Time: 05:48 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<header style="background:#004450; color: rgb(255, 255, 255); padding:10px; text-align: center; font-size:30px;
	font-weight: bold; text-transform: uppercase; width: 100%; margin-top: 0;">
    <a href="index.jsp">Prestamo de VideoJuegos
        <img src="imagenes/platillo.png" alt="icono representativo de la marca de VideoJuegos" width="50" height="50"></a>
</header>

<!-- Dropdown Structure -->
<ul id="dropdown1" class="dropdown-content" style="position: relative;">
    <li><a href="signup.jsp">Registrarse</a></li>
    <li class="divider"></li>
    <li><a href="login.jsp">Iniciar Sesión</a></li>
</ul>

<ul id="dropdown2" class="dropdown-content" style="position: relative;">
    <li><a href="signup.jsp">Registrarse</a></li>
    <li class="divider"></li>
    <li><a href="login.jsp">Iniciar Sesión</a></li>
</ul>

<nav style="background:#004450; color: #fff;">
    <div class="nav-wrapper">
        <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
        <ul class="hide-on-med-and-down">
            <li class="left"><a href="index.jsp">Catálogo<i class="material-icons right">apps</i></a></li>

            <!-- Dropdown Trigger -->
            <li class="right"><a class="dropdown-trigger" href="#!" data-target="dropdown1"><i class="material-icons right">account_circle arrow_drop_down</i></a></li>
        </ul>
    </div>
</nav>

<ul class="sidenav" id="mobile-demo">
    <!-- Dropdown Trigger -->
    <li class="center"><a class="dropdown-trigger" href="#!" data-target="dropdown2"><i class="material-icons">account_circle arrow_drop_down</i></a></li>
    <li><a href="index.jsp">Catálogo</a></li>

</ul>
</body>
</html>
