<%--
    Document   : index
    Created on : 29 oct. 2021, 11:33:06
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

<header style="background:#004450; color: rgb(255, 255, 255); padding:10px; text-align: center; font-size:30px;
	font-weight: bold; text-transform: uppercase; width: 100%; margin-top: 0;">
    <a href="?p=catalogo">Prestamo de VideoJuegos
        <img src="imagenes/platillo.png" alt="icono representativo de la marca de VideoJuegos" width="50" height="50"></a>
</header>

<!-- Dropdown Structure -->
<ul id="dropdown1" class="dropdown-content" style="position: relative;">
    <li><a href="index.jsp"><i class="material-icons">exit_to_app</i>Salir</a></li>
</ul>

<ul id="dropdown2" class="dropdown-content" style="position: relative;">
    <li><a href="index.jsp"><i class="material-icons">exit_to_app</i>Salir</a></li>
</ul>

<nav style="background:#004450; color: #fff;">
    <div class="nav-wrapper">
        <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
        <ul class="hide-on-med-and-down">
            <li class="left"><a href="?p=catalogo">Catálogo<i class="material-icons right">apps</i></a></li>
            <li class="left"><a href="?p=rentas">Rentas<i class="material-icons right">videogame_asset</i></a></li>
            <li class="left"><a href="?p=devolucion">Devolución<i class="material-icons right">import_export</i></a></li>
            <li class="left"><a href="?p=clientes">Clientes<i class="material-icons right">local_library</i></a></li>
            <!-- Dropdown Trigger -->
            <li class="right"><a class="dropdown-trigger" href="#!" data-target="dropdown1"><i class="material-icons right">account_circle arrow_drop_down</i></a></li>
        </ul>
    </div>
</nav>

<ul class="sidenav" id="mobile-demo">
    <!-- Dropdown Trigger -->
    <li class="center"><a class="dropdown-trigger" href="#!" data-target="dropdown2"><i class="material-icons">account_circle arrow_drop_down</i></a></li>
    <li><a href="?p=catalogo">Catálogo</a></li>
    <li><a href="?p=rentas">Rentas</a></li>
    <li><a href="?p=devolucion">Devoluciones</a></li>
    <li><a href="?p=clientes">Clientes</a></li>
</ul>

<section style="min-height: 600px;">

    <%
        if(request.getParameter("p")!=null)
        {
            String p = request.getParameter("p");
    %>

    <%
        String direccion = p+".jsp";
    %>

    <jsp:include page="<%=direccion%>"/>

    <%}else{%>

    <jsp:include page="catalogo.jsp"/>

    <%}%>


</section>

<footer class="page-footer" style="background-color: #000000; color: #fff;">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">MENÚ PRINCIPAL</h5>
                <p class="grey-text text-lighten-4">
                <li><a href="?p=catalogo">Inicio</a></li>
                <li><a href="?p=catalogo">Servicios</a></li>
                <li><a href="?p=catalogo">Nosotros</a></li>
                <li><a href="?p=catalogo">Contacto</a></li>
                </p>
            </div>
            <div class="col l4 offset-l2 s12">
                <h5 class="white-text">REDES SOCIALES</h5>
                <ul>
                    <li><a class="grey-text text-lighten-3" href="http://www.facebook.com/"><img src="imagenes/facebook.png" alt="FaceBook" width="25" height="25" title="Facebook">    Facebook</a></li>

                    <li><a class="grey-text text-lighten-3" href="http://www.instagram.com/"><img src="imagenes/instagram.png" alt="Instagram" width="25" height="25" title="Instagram">    Instagram</a></li>

                    <li><a class="grey-text text-lighten-3" href="http://www.twitter.com/"><img src="imagenes/twitter.png" alt="twitter" width="25" height="25" title="Twitter">    Twitter</a></li>

                    <li><a class="grey-text text-lighten-3" href="http://www.tiktok.com/"><img src="imagenes/tik-tok.png" alt="Tiktok" width="25" height="25" title="Tiktok">    Tiktok</a></li>

                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            © 2021 Copyright Jeison & Meerlen
            <a class="grey-text text-lighten-4 right" href="http://www.github.com/"><img src="imagenes/github.png" alt="GitHub" width="25" height="25" title="GitHub">    GitHub</a>
        </div>
    </div>
</footer>


<script>
    document.addEventListener('DOMContentLoaded', function(){
        M.AutoInit();
    });
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>