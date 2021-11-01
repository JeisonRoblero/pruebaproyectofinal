<%-- 
    Document   : DataBaseAccess
    Created on : 31 oct. 2021, 00:13:44
    Author     : jeyso
--%>
<%@ page language="java"
         import="java.sql.*" %>

<%
    Connection conn = null;
    Statement sql = null;

    try {
        Class.forName("org.postgresql.Driver");
        //DriverManager.registerDriver(new org.postgresql.Driver());
        conn = (Connection)DriverManager.getConnection("jdbc:postgresql://ec2-52-70-107-254.compute-1.amazonaws.com/dcclgqtss35a8b","wmuvkirbwvhsef","7a1d817f3ee9895f5470a5c7ae7d3ca97821f91390edc643e7e08c47e29240c1");
        sql= conn.createStatement();
        //out.print("CONEXION ESTABLECIDA");

    }catch (Exception e){
        out.print("ERROR EN LA CONEXION " + e);
    }
%>
