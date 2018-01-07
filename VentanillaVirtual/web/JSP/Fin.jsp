<%-- 
    Document   : UltimoP
    Created on : 16/12/2017, 10:28:31 PM
    Author     : josue
--%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page='Header.jsp'>
   <jsp:param name='title' value='Welcome' />
</jsp:include>
<%
    
            HttpSession sesion2 = request.getSession();
            String Name = (String)sesion2.getAttribute("Name");
            String ApeP= (String)sesion2.getAttribute("AP");
            String ApeM= (String)sesion2.getAttribute("AM");
            String Boleta = (String)sesion2.getAttribute("Bol");
            String Contraseña= (String)sesion2.getAttribute("Pass");
            String mail= (String)sesion2.getAttribute("Correo");
    String Grup = request.getParameter("SEL");
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
                ResultSet consulta=sta.executeQuery("select * from Alumnos where NBoleta='"+Boleta+"';");
                if(consulta.next()){
                out.println("Boleta en uso");
                out.println("En caso de existir un erro porfavor hacer <a> click aqui</a> para tener ayuda en linea"); 
                }else{
                    sta.executeUpdate("insert into Alumnos(Nombre,ApellidoP,ApellidoM,Email, Contraseña, NBoleta,Grupo)values('"+Name+"','"+ApeP+"','"+ApeM+"','"+mail+"','"+Contraseña+"','"+Boleta+"','"+Grup+"');");
                     sesion2.invalidate();
                    HttpSession sesion = request.getSession();
                      sesion.setAttribute("Nombre", Name);
                      response.sendRedirect("index.jsp");
                }
            } catch (SQLException ex) {
                out.println(ex.toString());
                out.println("Hubo un problema al intentar agregarlo");
                out.println("Puedes intentarlo de nuevo haciendo <a href='NewAccount.jsp'>click aqui<a>");
            }
            
        } catch (ClassNotFoundException ex) {
           out.print("");
        }
%>
<jsp:include page='Footer.jsp'>
   <jsp:param name='title' value='Welcome' />
</jsp:include> 
   