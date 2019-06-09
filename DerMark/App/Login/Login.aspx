<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DerMark.App.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>DerMark</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/loginCss.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


    <script src="../../Scripts/jquery-3.3.1.js"></script>
    <script src="../../push.min.js"></script>

</head>
<body>
    <div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
        <!--header starts-->
        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-dark border-bottom box-shadow">
            <h5 class="my-0 mr-md-auto text-white font-weight-normal">DerMark Food</h5>
            <nav class="my-2 my-md-0 mr-md-3">
                <ul class="nav nav-pills">
                    <li class="nav-item">
                        <a class="p-2 text-white" href="../../Pagina_Presentacion/Pagina_Presentacion.aspx">Pag.Principal</a>
                    </li>
                    <li class="nav-item">
                        <%--          <a class="p-2 text-white" href="#">Buscar Food</a>--%>
                    </li>
                    <li class="nav-item">
                        <a class="p-2 text-white" href="../OpcMem/OpcioneMembers.aspx">Registrarse</a>
                    </li>
                </ul>

            </nav>

        </div>
        <!--header ends-->


        <!--Formulario-->
        <form class="form-signin" id="form1" method="post" onsubmit="return enviar()">
            <div id="alerta">
                </div>
            <div>
                
                <div class="text-center mb-4">
                    <img class="mb-4" src="https://getbootstrap.com/docs/4.0/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
                    <h1 class="h3 mb-3 font-weight-normal">DerMark Food</h1>

                </div>

                <div class="form-label-group">
                    <input type="email" id="inputEmail" class="form-control" placeholder="Correo electronico" required="required" />
                </div>
                </br>
      <div class="form-label-group">
          <input type="password" id="inputPassword" class="form-control" placeholder="Contraseña" required="required" />
      </div>

                <div class="checkbox mb-3">
                    <label>
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block" id="btnlogin" type="submit">Ingresar</button>
            </div>
        </form>
        <!-- /WHY? -->

    </div>







    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>

    <script type="text/javascript">
        (function () {
            'use strict';
            window.addEventListener('load', function () {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function (form) {
                    form.addEventListener('submit', function (event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();






        function enviar() {

            //var nombre = $('#nombre').val();
            var email = $('#inputEmail').val();
            var password = $('#inputPassword').val()






            if (email == "") {

                Push.create("Advertencia", {
                    body: "Introducir correctamente el correo electronico",
                    icon: '/icon.png',
                    timeout: 4000,
                    onClick: function () {
                        window.focus();
                        this.close();
                    }
                });

                document.getElementById("email").style.borderColor = "red";

            }


            else if (password == "") {


                Push.create("Advertencia", {
                    body: "Introducir correctamente la contraseña",
                    icon: '/icon.png',
                    timeout: 4000,
                    onClick: function () {
                        window.focus();
                        this.close();
                    }
                });

                document.getElementById("psw").style.borderColor = "red";
            }



            else {

                var value = { correo_electronico: email, contraseña: password };


                $.ajax({
                    url: 'Login.aspx/loguearse',
                    method: 'post',
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(value),
                    dataType: "json",
                    success: function (data) {
                        if (data.d == 1) {



                            location.href = "../../Admin/index.aspx";

                        }
                        else {

                            $("#alerta").html('<div class="alert alert-danger" role="alert"> La informacion que se introdujo no existe en nuestros registros </div>');

                        }


                    },
                    error: function (err) {
                        alert(err);
                    }

                });
            }
            return false;
        }
    </script>
</body>
</html>
