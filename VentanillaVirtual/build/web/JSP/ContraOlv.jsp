<%-- 
    Document   : ContraOlv
    Created on : 25/12/2017, 04:11:47 PM
    Author     : josue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Recuparación de Contraseña</title>

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


function pasoFinal(){
            var campo = document.getElementById("email").value;
        
   var emailRegex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;

    if (emailRegex.test(campo)) {
        <%
        
        
        
        %>
      swal("Genial!", "Estas a punto de concluir tu registro !", "success")
    } else {
        swal ( "Oops" ,  "El formato de tu correo es incorrecto\n\
                          Favor de verificarlo" ,  "error" )
    }
           // document.forms['DatosC'].submit();
                

}

</script>
    </head>
    <body>
        <form action="Fin.jsp" name="DatosC"method="POST">
        <section class="hero is-info is-fullheight">

            <div class="hero-body">

                <div class="container has-text-centered">

                    <div class="column is-6 is-offset-3">

                        <h1 class="title" id="T1">

                           Recuperación de Contraseña

                        </h1>

                        <h2 class="subtitle" id="S1">
                            Porfavor proporcionanos el correo electronico que usaste al momento de registrarte
                        </h2>
                        
                        <div class="box" id="P1">



                            <div class="field is-grouped" >

                                <p class="control is-expanded">

                                 <input class="input" id="email" name="N" placeholder="Introduzca su correo" type="email" required>
                                </p>

                                <p class="control">

                                    <a class="button is-info" onclick="pasoFinal();">

                                        Verificar

                                    </a>

                                </p>

                            </div>

                        </div>
                            

                    </div>

                </div>

            </div>



        </section>
               </form>
        <script async type="text/javascript" src="../js/bulma.js">
document.getElementById('email').addEventListener('input', function() {
    campo = event.target;
    valido = document.getElementById('emailOK');
        
    emailRegex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
    //Se muestra un texto a modo de ejemplo, luego va a ser un icono
    if (emailRegex.test(campo.value)) {
      valido.innerText = "válido";
    } else {
      valido.innerText = "incorrecto";
    }
});
            
        </script>
    </body>
</html>
