<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PagoMembresia.aspx.cs" Inherits="DerMark.App.Pago.PagoMembresia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" href="#" />
    <title>DerMark</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/animsition.min.css" rel="stylesheet" />
    <link href="css/animate.css" rel="stylesheet" />
    <!-- Custom styles for this template -->


   
          <script src="../../Scripts/jquery-3.3.1.js"></script>
    <link href="../../bootstrap-4.0.0/bootstrap-4.0.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../bootstrap-4.0.0/bootstrap-4.0.0/dist/js/bootstrap.min.js"></script>

    <script src="../../bootstrap-4.0.0/bootstrap-4.0.0/assets/js/vendor/popper.min.js"></script>
    <link href="css/style.css" rel="stylesheet" />
 


</head>
<body>
    <div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
        <div class="site-wrapper">
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
                        <a class="p-2 text-white" href="selecClnAdm.aspx">Registrarse</a>
                    </li>
                </ul>
              
            </nav>
            <a class="btn btn-outline-primary btn-sm" href="../Login/Login.aspx">Ingresar</a>
        </div>
        <!--header ends-->

            <div class="page-wrapper">
                
                <div class="container m-t-30">
                    <div class="widget clearfix">
                        <!-- /widget heading -->

                        <div class="widget-body">
                            <form method="post" action="#">
                                <div class="row">

                                    <div class="col-sm-12">
                                        <div class="cart-totals margin-b-20">
                                            <div class="cart-totals-title">
                                                <h4>Pagar de membresía</h4>
                                            </div>
                                            <div class="cart-totals-fields">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <td>....</td>
                                                            <td>....</td>
                                                        </tr>
                                                        <tr>
                                                            <td>.... </td>
                                                            <td>....</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-color"><strong>Total</strong></td>
                                                            <td class="text-color"><strong>$00.00</strong></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!--cart summary-->
                                        <div class="payment-option">
                                            <ul class=" list-unstyled">

                                                <li>
                                                    <label class="custom-control custom-radio  m-b-10">
                                                        <span class="custom-control-indicator"></span><span class="custom-control-description">Paypal
                                                            <img src="images/paypal.jpg" alt="" width="90"></span>
                                                    </label>
                                                </li>
                                            </ul>
                                            <p class="text-xs-center"><a href="../../Admin/RegistroAdmin.aspx" class="btn btn-outline-success btn-block">Pagar ahora</a> </p>
                                        </div>
                                    </div>
                                </div>
                            </form>
                       
                        </div>
                    </div>
                </div>



            </div>


        </div>
        <!-- end:page wrapper -->
    </div>
    <
    <!--/end:Site wrapper -->
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
