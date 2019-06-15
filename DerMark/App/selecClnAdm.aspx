<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="selecClnAdm.aspx.cs" Inherits="DerMark.App.selecClnAdm" %>

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

           
   
        <script src="../../Scripts/jquery-3.3.1.js"></script>
    <link href="../../bootstrap-4.0.0/bootstrap-4.0.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../bootstrap-4.0.0/bootstrap-4.0.0/dist/js/bootstrap.min.js"></script>
  
    <script src="../../bootstrap-4.0.0/bootstrap-4.0.0/assets/js/vendor/popper.min.js"></script>



    <script src="../../push.min.js"></script>

</head>
<body style="text-align: justify"  >
    <div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
        <!--header starts-->
        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-dark border-bottom box-shadow">
            <h5 class="my-0 mr-md-auto text-white font-weight-normal">DerMark Food</h5>
            <nav class="my-2 my-md-0 mr-md-3">
                <ul class="nav nav-pills">
                    <li class="nav-item">
                        <a class="p-2 text-white" href="../Pagina_Presentacion/Pagina_Presentacion.aspx">Pag.Principal</a>
                    </li>
                   
                   <%-- <li class="nav-item">
                        <a class="p-2 text-white" href="#">Buscar Food</a>
                    </li>--%>
                   

                </ul>
            </nav>
            <a class="btn btn-outline-primary" href="../App/Login/Login.aspx">Ingresar</a>
        </div>
        <!--header ends-->

        <br>
         <br>
         <br>
         <br>
         <br>
         <br>
        <!--Formulario-->
        <form class="form-signin" id="form1" method="post" ">
            <div class="container">
        <!-- Example row of columns -->
        <div class="row">
          <div class="col-md-6">
            <h2>Cliente</h2>
            <p>Ven y no tendrás que hacer la larga cola frente a la caja, Ahorrarás muchísimo tiempo y es que en la época en la que vivimos el tiempo es oro y una de las grandes ventajas de pedir comida a domicilio es la posibilidad de aprovechar más el tiempo que destinaríamos a cocinar en casa. </p>
            <p><a class="btn btn-info" href="../Cliente/RegistroCliente.aspx" role="button">Ven y disfruta</a></p>
          </div>
          <div class="col-md-6">
            
            <h2>Empresarial</h2>
            <p>Para administrar un negocio online no necesitamos acudir a ningún lado sino que podemos gestionarlo desde la comodidad de nuestro hogar. </p>
                   <br>
              <br>
            <p><a class="btn btn-info" href="OpcMem/OpcioneMembers.aspx" role="button">Haz crecer tu negocio</a></p>
          </div>
         
        </div>

        <hr>

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

   


</body>
</html>
