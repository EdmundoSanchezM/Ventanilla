<%-- 
    Document   : VeriVIIP
    Created on : 12/12/2017, 11:47:49 PM
    Author     : josue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Confirmación</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" />

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">

        <!-- Bulma Version 0.6.0 -->

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.0/css/bulma.min.css" integrity="sha256-HEtF7HLJZSC3Le1HcsWbz1hDYFPZCqDhZa9QsCgVUdw=" crossorigin="anonymous" />

        <link rel="stylesheet" type="text/css" href="../css/landing.css">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
function soloLetras(e) {
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toLowerCase();
    letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
    numero = "0123456789"
    especiales = [8, 37, 39, 46];

    tecla_especial = false
    for(var i in especiales) {
        if(key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }

    if(letras.indexOf(tecla) == -1 && numero.indexOf(tecla) == -1 && !tecla_especial)
        return false;
}

function limpia() {
    var val = document.getElementById("miInput").value;
    var tam = val.length;
    for(i = 0; i < tam; i++) {
        if(!isNaN(val[i]))
            document.getElementById("miInput").value = '';
    }
}
function Validar(){
    var VERT = document.getElementById("Rial").value;
    var VERF = document.getElementById("miInput").value;
    if(VERT==VERF){
         swal("Genial!", "Estas a punto de concluir tu registro !", "success")
         document.getElementById("T1").style.visibility="hidden";
         document.getElementById("S1").style.visibility="hidden";
         document.getElementById("P1").style.visibility="hidden";
         document.getElementById("P2").style.visibility="visible";
         document.getElementById("T2").style.visibility="visible";
         document.getElementById("S2").style.visibility="visible";
    }else{
       swal ( "Oops" ,  "Ingresaste mal tu codigo\n\
                         TIP: Las mayusculas son importantes!" ,  "error" )
    }
}
function ShowSelected(){
var cod = document.getElementById("turno").value;
var Ma="M";
var Ve="T";
var grupo = document.getElementById("GRUPO");
var lab = document.getElementById("la");
var f=new Date();
var TM1=[""];
var TM2=new Array ("1IM1","1IM2","1IM3","1IM4","1IM5","1IM6","1IM7","1IM8","1IM9","1IMA","1IMB","1IMC","1IMD","1IME","1IMF","1IMG","1IMH","1IMI",
         "3IM1","3IM2","3IM3","3IM4","3IM5","3IM6","3IM7","3IM8","3IM9","3IMA","3IMB","3IMC","3IMD","3IME","3IMF","3IMG","3IMH","3IMI","3IMJ",
         "5IM1","5IM2","5IM3","5IM4","5IM5","5IM6","5IM7","5IM8","5IM9","5IMA","5IMB","5IMC","5IMD","5IME","5IMF");
var TV1=[""];
var TV2=new Array ("1IV1","1IV2","1IV3","1IV4","1IV5","1IV6","1IV7","1IV8","1IV9","1IVA","1IVB","1IVC","1IVD","1IVE","1IVF","1IVG","1IVH","1IVI",
         "3IV1","3IV2","3IV3","3IV4","3IV5","3IV6","3IV7","3IV8","3IV9","3IVA","3IVB","3IVC","3IVD","3IVE","3IVF","3IVG","3IVH","3IVI","3IVJ",
         "5IV1","5IV2","5IV3","5IV4","5IV5","5IV6","5IV7","5IV8","5IV9","5IVA","5IVB","5IVC","5IVD","5IVE","5IVF");
if(cod==Ma){
    if(f.getMonth()<=7){

    }else if(f.getMonth()>=8||f.getMonth()<=12){
    for( var i=0;i<TM2.length;i++){ 
        lab.style.visibility="visible";
        grupo.options[i] = new Option (TM2[i]);
       }
    }

}else if(cod==Ve){
    if(f.getMonth()<=7){

    }else if(f.getMonth()>=8||f.getMonth()<=12){
    for( var i=0;i<TV2.length;i++){ 
        lab.style.visibility="visible";
        grupo.options[i]= new Option (TV2[i]);
       }
    }
}
 
}

function pasoFinal(){
            <%
             HttpSession sesion = request.getSession();
                      sesion.setAttribute("Name", request.getAttribute("Name"));
                      sesion.setAttribute("AP", request.getAttribute("AP"));
                      sesion.setAttribute("AM", request.getAttribute("AM"));
                      sesion.setAttribute("Pass", request.getAttribute("Pass"));
                      sesion.setAttribute("Bol", request.getAttribute("Bol"));
                      sesion.setAttribute("Correo", request.getAttribute("Correo"));

            %>
            document.forms['DatosC'].submit();
                

}
</script>
    </head>
    <body>
        <form action="JSP/Fin.jsp" name="DatosC"method="POST">
        <section class="hero is-info is-fullheight">

            <div class="hero-body">

                <div class="container has-text-centered">

                    <div class="column is-6 is-offset-3">

                        <h1 class="title" id="T1">

                           Verificar Informacion

                        </h1>

                        <h2 class="subtitle" id="S1">

                           Porfavor revisa que tu información sea la correcta y en caso de ser la correcta favor de introducir el codigo de verificacion que mandamos por medio de tu correo electronico
                           <br>
                        </h2>
                        <h1 class="title" id="T2" style=" visibility: hidden;">

                           Ultimo paso de registro

                        </h1>

                        <h2 class="subtitle" id="S2" style=" visibility: hidden;">

                           Porfavor elije turno y grupo
                           <br>
                        </h2>
                        
                        <h2 class="subtitle">
                            <input class="input" style=" visibility: hidden" id="Rial" value="<%=request.getAttribute("Veri")%>" type="text" disabled required>
                            Nombre: <input class="input" id="N" name="N" value="<%=request.getAttribute("Name")%>" type="text" disabled required>
                            Apellido Paterno:<input class="input" id="AP" name="AP" value="<%=request.getAttribute("AP")%>" type="text" disabled  required> 
                            Apellido Materno: <input class="input" ID="AM" name="AM" value="<%=request.getAttribute("AM")%>" type="text" disabled  required> 
                            Boleta: <input class="input" id="b" name="b" value="<%=request.getAttribute("Bol")%>" type="text" disabled required> 
                            Contraseña: <input class="input" id="c" name="c" value="<%=request.getAttribute("Pass")%>" type="text" disabled required> 
                            Correo Electronico: <input class="input" id="Corr" name="Corr" value="<%=request.getAttribute("Correo")%>" type="text" disabled required>
                            <br>
                            <br>
                        </h2>

                        <div class="box" id="P1">



                            <div class="field is-grouped" >

                                <p class="control is-expanded">

                                    <input class="input" onkeypress="return soloLetras(event)" id="miInput" maxlength="6" type="text" placeholder="Introduzca su codigo aquí">

                                </p>

                                <p class="control">

                                    <a class="button is-info" onclick="Validar();">

                                        Verificar

                                    </a>

                                </p>

                            </div>

                        </div>
                            <div class="box" id="P2" style="visibility:  hidden;">
                             
                                <div class="field is-grouped">
                                    <p class="control is-expanded">
                                        <label class="label">Turno:</label>
                                        <span class="select">
                                            <select id="turno" onchange="ShowSelected();" name="turno" required>
                                                <option value="M">MATUTINO</option>
                                                <option value="T">VESPERTINO</option>
                                            </select>
                                        </span>
                                        
                                       <label class="label">Grupo:</label>
                                        
                                        <span class="select" id="la" style="visibility:hidden;" >
                                            <select id="GRUPO" name="SEL" required>
                                              <option>Escoje Grupo</option>  
                                            </select>
                                        </span>
                                       <br>
                                       <br>
                                        <a class="button is-info" onclick="pasoFinal();">

                                            Terminar

                                        </a>

                                    </p>

                                </div>

                            </div>

                    </div>

                </div>

            </div>



        </section>
               </form>
        <script async type="text/javascript" src="../js/bulma.js"></script>
    </body>
</html>
