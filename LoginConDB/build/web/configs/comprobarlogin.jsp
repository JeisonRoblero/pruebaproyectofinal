<%
String nombre=(String)session.getAttribute("userid");
String email=(String)session.getAttribute("email");
if(nombre==null || email==null)
{
    response.sendRedirect("index.jsp");
}
%>
