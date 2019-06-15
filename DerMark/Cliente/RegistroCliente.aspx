<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroCliente.aspx.cs" Inherits="DerMark.RegistroCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" href="#" />
    <title>DerMark</title>






    <!-- Bootstrap core CSS -->
    <link href="../DocFormRegistro/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../DocFormRegistro/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../DocFormRegistro/css/animsition.min.css" rel="stylesheet" />
    <link href="../DocFormRegistro/css/animate.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="../DocFormRegistro/css/style.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>





    <script src="../Scripts/jquery-3.3.1.js"></script>
    <script src="../push.min.js"></script>
    <script src="cliente.js"></script>



</head>
<body>
    <div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
        <!--header starts-->
        <!--header starts-->
        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-dark border-bottom box-shadow">
            <h5 class="my-0 mr-md-auto text-white font-weight-normal">DerMark Food</h5>
            <nav class="my-2 my-md-0 mr-md-3">
                <ul class="nav nav-pills">
                    <li class="nav-item">
                        <a class="p-2 text-white" href="../Pagina_Presentacion/Pagina_Presentacion.aspx">Pag.Principal</a>
                    </li>
                    <li class="nav-item">
                       <%-- <a class="p-2 text-white" href="#">Buscar Food</a>--%>
                    </li>
                    <li class="nav-item">
                        <a class="p-2 text-white" href="../App/selecClnAdm.aspx">Registrarse</a>
                    </li>
                </ul>
            </nav>
            
            <a class="btn btn-outline-primary btn-sm" href="../App/Login/Login.aspx">Ingresar</a>
        </div>
        <!--header ends-->
        <div class="page-wrapper">
            
            <section>

                <div class="container">
                     <div id="alerta">
                            </div>
                    <form class="needs-validation" novalidate="novalidate" id="form1" method="post" onsubmit="return enviar()">
                        <div class="row">
                            <!-- REGISTER -->
                           
                            <div class="col-md-12">
                                <h2>Información personal </h2>
                                <div class="widget">
                                    <div class="widget-body">

                                        <div class="row">
                                            <div class="form-group col-sm-6">
                                                <label for="exampleInputEmail1">Nombre<abbr title="Este campo es obligatorio">*</abbr></label>
                                                <input class="form-control" type="text" id="nombre" name="nombre" placeholder="Nombre" onkeypress="return check(event)" required="required" />


                                            </div>
                                            <div class="form-group col-sm-6">
                                                <label for="exampleInputEmail1">Apellidos<abbr title="Este campo es obligatorio">*</abbr></label>
                                                <input class="form-control" type="text" id="apellido" placeholder="Apellido" onkeypress="return check(event)" required="required" />
                                            </div>


                                        <div class="form-group col-sm-6">
                                            <label for="exampleFormControlSelect1">Nacionalidad<abbr title="Este campo es obligatorio">*</abbr></label>
                                            <select class="form-control" id="nacionalidad" required="required">
                                                <option value="">Seleccionar </option>


                                            </select>
                                        </div>

                                        <div class="form-group col-sm-6">
                                            <label for="exampleInputEmail1">Correo electronico<abbr title="Este campo es obligatorio">*</abbr></label>

                                        <input class="form-control" type="email" id="mail"  placeholder="Correo electronico" required="required">
                                         
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <label for="exampleInputPassword1">Contraseña</label>
                                            <input type="password" class="form-control" id="contraseña" placeholder="Contraseña" required="required" />
                                        </div>








                                        <div class="form-group col-sm-6">
                                            <label for="exampleInputEmail1">Teléfono<abbr title="Este campo es obligatorio">*</abbr></label>
                                            <input class="form-control" type="text" name="tel" id="celular" placeholder="Teléfono" required="required" />
                                        </div>





                                    </div>
                                </div>


                            </div>
                            <!-- end: Widget -->
                        </div>
                </div>



                <div class="row">
                    <div class="col-md-12">


                        <div class="row">
                            <div class="col-sm-4">
                                <button type="submit" id="btnInsertar" class="btn btn-primary" value="Registrar">Registrar</button>


                            </div>
                        </div>
                    </div>
                </div>

                <!-- /REGISTER -->
            </form>
        </div>
        </section>
    </div>



    </div>





    <!-- end:page wrapper -->

    <!--/end:Site wrapper -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="../DocFormRegistro/js/jquery.min.js"></script>
    <script src="../DocFormRegistro/js/tether.min.js"></script>
    <script src="../DocFormRegistro/js/bootstrap.min.js"></script>
    <script src="../DocFormRegistro/js/animsition.min.js"></script>
    <script src="../DocFormRegistro/js/bootstrap-slider.min.js"></script>
    <script src="../DocFormRegistro/js/jquery.isotope.min.js"></script>
    <script src="../DocFormRegistro/js/headroom.js"></script>
    <script src="../DocFormRegistro/js/foodpicky.min.js"></script>
    <script src="../jquery.mask.min.js"></script>





</body>
</html>
