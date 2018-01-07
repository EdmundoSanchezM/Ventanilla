<%-- 
    Document   : index
    Created on : 20/12/2017, 12:26:56 AM
    Author     : josue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page='Header.jsp'>
   <jsp:param name='title' value='Welcome' />
</jsp:include>
    <header class="masthead">
      <div class="intro-body">
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <h1 class="brand-heading">Ventanilla Virtual</h1>
              <p class="intro-text">Te recordamos que esta herramienta fue diseñana para tu uso
                  <br> por lo que te pedimos su uso adecuado de la misma.
                <br>Creado por Edmundo JSM</p>
              <a href="#about" class="btn btn-circle js-scroll-trigger">
                <i class="fa fa-angle-double-down animated"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </header>

    <section id="about" class="content-section text-center">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <h2>Sobre la Ventanilla Virtual</h2>
            <p>Es un sitio web creado para que el alumnado del CECyT N°7 lo utilize para la facilitación
            de los tramites que se llevan acabo en gestion escolar(Reposicion de Credencial, constancia de estudios, etc).
            <br>
            
            </p>
          </div>
        </div>
      </div>
    </section>

    <section id="download" class="download-section content-section text-center">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <h2>Nos puedes encontrar en nuestras redes sociales</h2>
            <ul class="list-inline banner-social-buttons">
              <li class="list-inline-item">
                <a href="https://twitter.com/gestion_7" class="btn btn-default btn-lg">
                  <i class="fa fa-twitter fa-fw"></i>
                  <span class="network-name">Twitter</span>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="https://www.facebook.com/GestionEscolarCecyt7Cuauhtemoc/" class="btn btn-default btn-lg">
                  <i class="fa fa-facebook fa-fw"></i>
                  <span class="network-name">Facebook</span>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="https://www.youtube.com/channel/UCh91uiYEbh4LZEY6HKrkyoA" class="btn btn-default btn-lg">
                  <i class="fa fa-youtube fa-fw"></i>
                  <span class="network-name">Youtube</span>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
<jsp:include page='Footer.jsp'>
   <jsp:param name='title' value='Welcome' />
</jsp:include> 
   

