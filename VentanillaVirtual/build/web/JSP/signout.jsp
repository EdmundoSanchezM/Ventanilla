<%-- 
    Document   : signout
    Created on : 13/10/2017, 08:46:14 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
            HttpSession sesion = request.getSession();
            String Nombre = (String)sesion.getAttribute("Nombre");
            if(!sesion.isNew()){
                if(Nombre==null){
                }else{
                     sesion.invalidate();
                out.print("<script>alert('Has salido ^^');</script>");
                response.sendRedirect("http://www.academico.cecyt7.ipn.mx/htdocs/index.html");

                }
            }else{
               response.sendRedirect("http://www.academico.cecyt7.ipn.mx/htdocs/index.html");
            }

%>