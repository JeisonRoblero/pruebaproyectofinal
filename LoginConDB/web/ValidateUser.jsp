<%-- 
    Document   : ValidateUser
    Created on : 1 nov. 2021, 00:51:18
    Author     : jeyso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="http://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
            <%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("txtmail");    
    String pwd = request.getParameter("txtpass");
    Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection("jdbc:postgresql://ec2-52-70-107-254.compute-1.amazonaws.com/dcclgqtss35a8b","wmuvkirbwvhsef","7a1d817f3ee9895f5470a5c7ae7d3ca97821f91390edc643e7e08c47e29240c1");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from admin where email='" + userid + "' and contra='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        response.sendRedirect("loginactivo.jsp");
    } else {
        response.sendRedirect("errorLogin.jsp");
       
    }
%>


    </body>
</html>
