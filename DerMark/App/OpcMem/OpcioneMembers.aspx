<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OpcioneMembers.aspx.cs" Inherits="DerMark.App.OpcioneMembers" %>

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
 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
     


    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
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
            <a class="btn btn-outline-primary" href="../Login/Login.aspx">Ingresar</a>
        </div>
        <!--header ends-->

        <div class="page-wrapper">


            <div class="container text-xs-center m-b-20">
                <h1 class="font-black">Elije tu membresía de acuerdo a tus gustos</h1>
                <%--<p class="font-white">Find restaurants, specials, and coupons for free</p>--%>
            </div>

            <div class="card-deck mb-3 text-center">

                <div class="card mb-4 box-shadow">
                    <div class="card-header">
                        <h4 class="my-0 font-weight-normal">Personal</h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">Gratis <small class="text-muted"></small></h1>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>1 Solo establecimiento</li>
                            <%-- <li>10 GB of storage</li>
              <li>Priority email support</li>
              <li>Help center access</li>--%>
                        </ul>
                        <button type="button"  id="btnfree" onclick="registrar()" class="btn btn-lg btn-block btn-primary">Ingresar</button>
                    </div>
                </div>
                <div class="card mb-4 box-shadow">
                    <div class="card-header">
                        <h4 class="my-0 font-weight-normal">Empresarial</h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">$RD 500 <small class="text-muted">/ Mes</small></h1>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>Establecimiento ilimitado</li>
                            <%--<li>15 GB of storage</li>
              <li>Phone and email support</li>
              <li>Help center access</li>--%>
                        </ul>
                        <button type="button" id="btnem" onclick="pagar()" class="btn btn-lg btn-block btn-primary">Pagar</button>
                    </div>
                </div>
            </div>



            <!-- end:Container -->
        </div>
        <section class="app-section">
            <div class="app-wrap">
                <div class="container">
                    <div class="row text-img-block text-xs-left">
                        <div class="container">
                            <div class="col-xs-12 col-sm-6 hidden-xs-down right-image text-center">
                                <figure>
                                    <img src="images/app.png" alt="Right Image">
                                </figure>
                            </div>
                            <div class="col-xs-12 col-sm-6 left-text">
                                <h3>The Best Food Delivery App</h3>
                                <p>Now you can make food happen pretty much wherever you are thanks to the free easy-to-use Food Delivery &amp; Takeout App.</p>
                                <div class="social-btns">
                                    <a href="#" class="app-btn apple-button clearfix">
                                        <div class="pull-left"><i class="fa fa-apple"></i></div>
                                        <div class="pull-right"><span class="text">Available on the</span> <span class="text-2">App Store</span> </div>
                                    </a>
                                    <a href="#" class="app-btn android-button clearfix">
                                        <div class="pull-left"><i class="fa fa-android"></i></div>
                                        <div class="pull-right"><span class="text">Available on the</span> <span class="text-2">Play store</span> </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


    </div>
    <!-- end:page wrapper -->
    <!--/end:Site wrapper -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
       <script src="../../Scripts/jquery-3.3.1.js"></script>
 

    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>
      

    


    <script type="text/javascript">

        function pagar() {
        
            location.href = "../Pago/PagoMembresia.aspx";
        }
        
    </script>

   
    <script type="text/javascript">

        function registrar() { 
                 location.href = "../../Cliente/RegistroCliente.aspx";
               }
        

    </script>

   

</body>
</html>
