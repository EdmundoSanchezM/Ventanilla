<%-- 
    Document   : SingInnow
    Created on : 13/10/2017, 08:45:04 AM
    Author     : Alumno
--%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page='Header.jsp'>
   <jsp:param name='title' value='Welcome' />
</jsp:include>
<%
  String Name=request.getParameter("user_name");
    String Pass=request.getParameter("user_pass");
    
       Connection con = null;
       Statement sta=null;
       String url=("jdbc:mysql://localhost/GestionEscolarV7");
       String usrName = "root";
       String pwd= "n0m3l0";
       ResultSet r =null;
       
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                con = DriverManager.getConnection(url,usrName,pwd);
                sta=con.createStatement();
                ResultSet consulta=sta.executeQuery("select Nombre from Alumnos where Email='"+Name+"'and Contraseña='"+Pass+"';");
                if(!consulta.next()){
                    out.print("<script>alert('No se ha encontrado su usuario o la contraseña es icorrecta');</script>");
                }else{
                      String Nombre = consulta.getString("Nombre");
                    HttpSession sesion = request.getSession();
                      sesion.setAttribute("Nombre", Nombre);
                      response.sendRedirect("index.jsp");
                }
            } catch (SQLException ex) {
                out.println("Hubo un problema al intentar agregarlo"+ex.toString());
                out.println("Puedes intentarlo de nuevo haciendo <a href='NewAccount.jsp'>click aqui<a>");
            }
            
        } catch (ClassNotFoundException ex) {
           out.print("");
        }
%>
<jsp:include page='Footer.jsp'>
    <jsp:param name='title' value='Welcome' />
</jsp:include>
