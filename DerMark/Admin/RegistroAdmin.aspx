<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroAdmin.aspx.cs" Inherits="DerMark.Admin.RegistroAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">




    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" href="#" />
    <title>DerMark</title>






    <!-- Bootstrap core CSS -->
    <link href="DocFormRegistro/css/bootstrap.min.css" rel="stylesheet" />
    <link href="DocFormRegistro/css/font-awesome.min.css" rel="stylesheet" />
    <link href="DocFormRegistro/css/animsition.min.css" rel="stylesheet" />
    <link href="DocFormRegistro/css/animate.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="DocFormRegistro/css/style.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.3.1.js"></script>

        <script src="Ajax/admin.js"></script>
    <link href="../bootstrap-4.0.0/bootstrap-4.0.0/dist/css/bootstrap.min.css" rel="stylesheet" />
        <script src="../Scripts/jquery-3.3.1.js"></script>
    <script src="../bootstrap-4.0.0/bootstrap-4.0.0/assets/js/vendor/popper.min.js"></script>




    <script src="../push.min.js"></script>
    <script type="text/javascript" src="Ajax/admin.js"></script>



</head>
<body>
    <div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
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

       
                <div class="container">
                    <div id="alerta">
                            </div>
                    <form class="needs-validation" novalidate="novalidate" id="form1" method="post" onsubmit="return enviar()">

                           <div class="row">
                            <div class="col-md-12">

                                <h2>Información de tu negocio </h2>
                                <div class="widget">
                                    <div class="widget-body">

                                        <div class="row">

                                            <div class="form-group col-sm-6">
                                                <label for="exampleFormControlSelect1">Seleccionar ciudad<abbr title="Este campo es obligatorio">*</abbr></label>
                                                <select class="form-control" id="ciudaddeb" required="required">
                                                    <option value="">Seleccionar </option>


                                                </select>
                                            </div>
                                            <div class="form-group col-sm-6">
                                                <label for="exampleFormControlSelect1">Seleccionar pais<abbr title="Este campo es obligatorio">*</abbr></label>
                                                <select class="form-control" id="paisdeb" required="required">
                                                    <option value="">Seleccionar </option>


                                                </select>
                                            </div>

                                            <div class="form-group col-sm-6">
                                                <label for="exampleInputEmail1">Nombre de la empresa<abbr title="Este campo es obligatorio">*</abbr></label>
                                                <input class="form-control" type="text" id="nombredeb" placeholder="Nombre de la empresa" runat="server" required="required" />
                                               
                                            </div>

                                            <div class="form-group col-sm-6">
                                                <label for="exampleInputEmail1">Correo electronico<abbr title="Este campo es obligatorio">*</abbr></label>
                                                <input class="form-control" type="email" id="emailempresa" placeholder="Correo electronico" required="required" />
                                               
                                                <small class="form-text text-muted"></small>
                                            </div>

                                            <div class="form-group col-sm-6">
                                                <label for="exampleInputEmail1">RNC<abbr title="Este campo es obligatorio">*</abbr></label>
                                                <input class="form-control" type="text" name="rnc" id="RNC" placeholder="RNC" required="required" />
                                                
                                            </div>
                                            <div class="form-group col-sm-6">
                                                <label for="exampleInputEmail1">Teléfono<abbr title="Este campo es obligatorio">*</abbr></label>
                                                <input class="form-control" type="text" name="telem" id="celularempresa" placeholder="Teléfono" required="required" />
                                                
                                            </div>
                                            <div class="form-group col-sm-6">
                                                <label for="exampleTextarea">Dirección<abbr title="Este campo es obligatorio">*</abbr></label>
                                                <textarea class="form-control" id="direccindeb" rows="3" required="required"></textarea>
                                               
                                            </div>




                                            <div class="form-group col-sm-12">
                                                <label for="exampleTextarea">Descripción</label>
                                                <textarea class="form-control" id="descripciondeb" rows="3"></textarea>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                                <!-- end: Widget -->
                            </div>
                        </div>







                        <div class="row">
                            <!-- REGISTER -->
                            
                            <div class="col-md-12">
                                <h2>Información personal </h2>
                                <div class="widget">
                                    <div class="widget-body">

                                        <div class="row">
                                            <div class="form-group col-sm-6">
                                                <label for="exampleInputEmail1">Nombre<abbr title="Este campo es obligatorio">*</abbr></label>
                                                <input class="form-control" type="text" onkeypress="return check(event)" id="nombre" name="nombre" placeholder="Nombre" required="required" />
                                                


                                            </div>
                                            <div class="form-group col-sm-6">
                                                <label for="exampleInputEmail1">Apellidos<abbr title="Este campo es obligatorio">*</abbr></label>
                                                <input class="form-control" type="text" onkeypress="return check(event)" id="apellido" placeholder="Apellido" required="required" />
                                                
                                            </div>
                                            <div class="form-group col-sm-6">
                                                <label for="exampleFormControlSelect1">Nacionalidad<abbr title="Este campo es obligatorio">*</abbr></label>
                                                <select class="form-control" id="nacionalidad" required="required">
                                                    <option value="">Seleccionar </option>


                                                </select>
                                            </div>

                                            <div class="form-group col-sm-6">
                                                <label for="exampleInputEmail1">Correo electronico<abbr title="Este campo es obligatorio">*</abbr></label>
                                                <input class="form-control" type="email" id="mail" placeholder="Correo electronico" required="required" />
                                               
                                                <small class="form-text text-muted"></small>
                                            </div>
                                            <div class="form-group col-sm-6">
                                                <label for="exampleInputPassword1">Contraseña</label>
                                                <input type="password" class="form-control" id="contraseña" placeholder="Contraseña" required="required" />
                                            </div>
                                            <div class="form-group col-sm-6">
                                                <label for="exampleInputPassword1">Repetir contraseña</label>
                                                <input type="password" class="form-control" id="repetirContraseña" placeholder="Repetir Contraseña" required="required" />
                                            </div>




                                            <div class="form-group col-sm-6">
                                                <label for="exampleFormControlSelect1">Seleccionar ciudad<abbr title="Este campo es obligatorio">*</abbr></label>
                                                <select class="form-control" id="ciudad" required="required">
                                                    <option value="">Seleccionar </option>

                                                </select>
                                            </div>

                                            <div class="form-group col-sm-6">
                                                <label for="exampleFormControlSelect1">Seleccionar pais<abbr title="Este campo es obligatorio">*</abbr></label>
                                                <select class="form-control" id="pais" required="required">
                                                    <option value="">Seleccionar</option>

                                                </select>
                                            </div>

                                            <div class="form-group col-sm-6">
                                                <label for="exampleInputEmail1">Teléfono</label>
                                                <input class="form-control" type="text" name="tel" id="celular" placeholder="Teléfono" required="required" />
                                                
                                            </div>


                                            <div class="form-group col-sm-6">
                                                <label for="exampleInputPassword1">Fecha de nacimiento<abbr title="Este campo es obligatorio">*</abbr></label>
                                                <input type="date" class="form-control" value="" id="fn" required="required" />
                                            </div>

                                            <div class="form-group col-sm-12">
                                                <label for="exampleTextarea">Descripción</label>
                                                <textarea class="form-control" id="descripcion" rows="3"></textarea>
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
                                        <button type="submit" id="btnInsertar" class="btn btn-primary" >Registrar</button>


                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- /REGISTER -->
                    </form>
                </div>
       


    </div>
        </div>




    <!-- end:page wrapper -->

    <!--/end:Site wrapper -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="DocFormRegistro/js/jquery.min.js"></script>
    <script src="DocFormRegistro/js/tether.min.js"></script>
    <script src="DocFormRegistro/js/bootstrap.min.js"></script>
    <script src="DocFormRegistro/js/animsition.min.js"></script>
    <script src="DocFormRegistro/js/bootstrap-slider.min.js"></script>
    <script src="DocFormRegistro/js/jquery.isotope.min.js"></script>
    <script src="DocFormRegistro/js/headroom.js"></script>
    <script src="DocFormRegistro/js/foodpicky.min.js"></script>
    <script src="../jquery.mask.min.js"></script>

</body>
</html>
