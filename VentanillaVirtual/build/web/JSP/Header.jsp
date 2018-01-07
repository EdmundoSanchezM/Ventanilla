<%-- 
    Document   : Header
    Created on : 5/10/2017, 11:30:08 PM
    Author     : edmundo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Gestion Escolar</title>

    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Cabin:700' rel='stylesheet' type='text/css'>

    <link href="css/grayscale.min.css" rel="stylesheet">

  </head>
  <body id="page-top">

    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Gestion Escolar</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            
              <%
            HttpSession sesion = request.getSession();
            String Nombre = (String)sesion.getAttribute("Nombre");   
            if(!sesion.isNew()){
                if(Nombre==null){
                out.print("<li class='nav-item'> <a class='nav-link js-scroll-trigger' href='../LoginyRegister.html'>Ingresar ó Crea una cuenta</a></li>");
                out.print("<li class='nav-item'> <a class='nav-link js-scroll-trigger' href='index.jsp'>Inicio</a> </li>"); 
                out.print("<li class='nav-item'> <a class='nav-link js-scroll-trigger' >Ayuda en linea </a> </li>"); 
                out.print("<li class='nav-item'> <a class='nav-link js-scroll-trigger' href='#about'>Sobre</a> </li>"); 
                out.print("<li class='nav-item'> <a class='nav-link js-scroll-trigger' href='#download'>Redes Sociales</a> </li>"); 
                }else{
                out.print("<li class='nav-item'> <a class='nav-link js-scroll-trigger' >Hola "+Nombre+"</a> </li>"); 
                out.print("<li class='nav-item'> <a class='nav-link js-scroll-trigger' href='PVV.jsp'>Ventanilla Virtual</a> </li>"); 
                out.print("<li class='nav-item'> <a class='nav-link js-scroll-trigger' href='index.jsp'>Inicio</a> </li>"); 
                out.print("<li class='nav-item'> <a class='nav-link js-scroll-trigger' >Detalles de la cuenta</a> </li>"); 
                out.print("<li class='nav-item'> <a class='nav-link js-scroll-trigger' >Ayuda en linea </a> </li>"); 
                out.print("<li class='nav-item'> <a class='nav-link js-scroll-trigger' href='signout.jsp'>Salir</a> </li>"); 
                }

            }else{
                out.print("<li class='nav-item'> <a class='nav-link js-scroll-trigger' href='../LoginyRegister.html'>Ingresar ó Crea una cuenta</a></li>");
                out.print("<li class='nav-item'> <a class='nav-link js-scroll-trigger' href='index.jsp'>Inicio</a> </li>"); 
                out.print("<li class='nav-item'> <a class='nav-link js-scroll-trigger' href=''>Ayuda en linea </a> </li>"); 
                out.print("<li class='nav-item'> <a class='nav-link js-scroll-trigger' href='#about'>Sobre</a> </li>"); 
                out.print("<li class='nav-item'> <a class='nav-link js-scroll-trigger' href='#download'>Redes Sociales</a> </li>"); 
            }
            %>


            <!--
                              <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link  is-active" href="/documentation/overview/start/">
          Tramites
        </a>
        <div class="navbar-dropdown ">
          <a class="navbar-item is-active" href="/documentation/overview/start/">
            Solicitar Tramite
          </a>
          <a class="navbar-item " href="https://bulma.io/documentation/modifiers/syntax/">
            Ver todos los tramites realizados
          </a>
          <a class="navbar-item " href="https://bulma.io/documentation/columns/basics/">
            Cancelar algun tramite
          </a>
        </div>
      </div>
            -->
          </ul>
        </div>
      </div>
    </nav>
          

