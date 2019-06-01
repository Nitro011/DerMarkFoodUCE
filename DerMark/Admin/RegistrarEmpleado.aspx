<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/index.Master" AutoEventWireup="true" CodeBehind="RegistrarEmpleado.aspx.cs" Inherits="DerMark.Admin.RegistrarEmpleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="br-header">
        <div class="br-header-left">
            <div class="navicon-left hidden-md-down"><a id="btnLeftMenu" href=""><i class="icon ion-navicon-round"></i></a></div>
            <div class="navicon-left hidden-lg-up"><a id="btnLeftMenuMobile" href=""><i class="icon ion-navicon-round"></i></a></div>

        </div>
        <!-- br-header-left -->
        <div class="br-header-right">
            <nav class="nav">
                <div class="dropdown">
                    <%-- <a href="" class="nav-link pd-x-7 pos-relative" data-toggle="dropdown">
                        <i class="icon ion-ios-email-outline tx-24"></i>
                        <!-- start: if statement -->
                        <span class="square-8 bg-danger pos-absolute t-15 r-0 rounded-circle"></span>
                        <!-- end: if statement -->
                    </a>--%>
                    <div class="dropdown-menu dropdown-menu-header">
                        <div class="dropdown-menu-label">
                            <label>Messages</label>

                        </div>
                        <!-- d-flex -->

                        <div class="media-list">
                            <!-- loop starts here -->
                            <a href="" class="media-list-link">
                                <div class="media">
                                    <img src="https://via.placeholder.com/500" alt="">
                                    <div class="media-body">
                                        <div>
                                            <p>Donna Seay</p>
                                            <span>2 minutes ago</span>
                                        </div>
                                        <!-- d-flex -->
                                        <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring.</p>
                                    </div>
                                </div>
                                <!-- media -->
                            </a>
                            <!-- loop ends here -->

                            <div class="dropdown-footer">
                                <a href=""><i class="fa fa-angle-down"></i>Show All Messages</a>
                            </div>
                        </div>
                        <!-- media-list -->
                    </div>
                    <!-- dropdown-menu -->
                </div>
                <!-- dropdown -->

                <div class="dropdown">
                    <a href="" class="nav-link nav-link-profile" data-toggle="dropdown">

                        <!--nombre usuario-->
                        <span class="logged-name hidden-md-down" id="username"></span>


                        <img src="https://via.placeholder.com/500" class="wd-32 rounded-circle" alt="">
                        <%--<span class="square-10 bg-success"></span>--%>
                        <!--Verde de activo-->
                    </a>
                    <div class="dropdown-menu dropdown-menu-header wd-250">
                        <div class="tx-center">
                            <a href="">
                                <img src="https://via.placeholder.com/500" class="wd-80 rounded-circle" alt=""></a>
                            <h6 class="logged-fullname" id="namefull">Katherine P. Lumaad</h6>
                            <p id="email">youremail@domain.com</p>
                        </div>
                        <!-- Linea-->
                        <%--<hr>

                        <hr>--%>
                        <ul class="list-unstyled user-profile-nav">
                            <%--<li><a href=""><i class="icon ion-ios-person"></i>Edit Profile</a></li>
                            <li><a href=""><i class="icon ion-ios-gear"></i>Settings</a></li>
                            <li><a href=""><i class="icon ion-ios-download"></i>Downloads</a></li>
                            <li><a href=""><i class="icon ion-ios-star"></i>Favorites</a></li>
                            <li><a href=""><i class="icon ion-ios-folder"></i>Collections</a></li>--%>
                            <li><a href="" id="btnexit"><i class="icon ion-power"></i>Sign Out</a></li>
                        </ul>
                    </div>
                    <!-- dropdown-menu -->
                </div>
                <!-- dropdown -->
            </nav>

        </div>
        <!-- br-header-right -->
    </div>



</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="alerta">
    </div>
    <div class="br-pagetitle">
        <%--   <i class="icon ion-ios-gear-outline"></i>
        <div>
          <h4>Form Layouts</h4>
          <p class="mg-b-0">Forms are used to collect user information with different element types of input, select, checkboxes, radios and more.</p>
        </div>--%>
    </div>
    <!-- d-flex -->


    <div class="br-pagebody">
        <div class="br-section-wrapper">
            <h5 class="br-section-label">Ingresar Empleado</h5>


            <div class="form-layout form-layout-1">
                <div class="row mg-b-25">
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label class="form-control-label">Nombre:<abbr title="Este campo es obligatorio">*</abbr>
                            </label>
                            <input class="form-control" id="nombre" onkeypress="return check(event)" type="text" placeholder="Nombre" required="required">
                           
                        </div>
                    </div>
                    <!-- col-4 -->
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label class="form-control-label">Apellidos:<abbr title="Este campo es obligatorio">*</abbr></label>
                            <input class="form-control" id="apellido" onkeypress="return check(event)" type="text" placeholder="Apellidos" required="required">
                            

                        </div>
                    </div>
                    <!-- col-4 -->
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label class="form-control-label">Correo electronico:<abbr title="Este campo es obligatorio">*</abbr>
                                <span id="emailOK"></span></label>
                            <input class="form-control" type="email" id="mail" placeholder="Correo electronico" required="required">
                             
                        </div>
                    </div>
                    <!-- col-4 -->
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label class="form-control-label">Contraseña:</label>
                            <input class="form-control" type="password" id="psw" placeholder="Constraseña" required="required">
                            
                        </div>
                    </div>



                    <!-- col-4 -->
                    <div class="col-lg-4">
                        <div class="form-group ">
                            <label class="form-control-label">Telefono:<abbr title="Este campo es obligatorio">*</abbr>
                            </label>
                            <input class="form-control" type="text" id="telefono" name="tel" placeholder="Telefono" required="required">
                           
                        </div>
                    </div>
                    <!-- col-4 -->

                    <div class="col-lg-4">
                        <div class="form-group mg-b-10-force">
                            <label class="form-control-label">Tipo de empleado:<abbr title="Este campo es obligatorio">*</abbr>
                            </label>
                            <select class="form-control select2" id="te" data-placeholder="Choose country" required="required">
                              
                                <option label="Seleccionar"></option>


                            </select>
                             
                        </div>
                    </div>


                    <!-- col-4 -->
                    <div class="col-lg-4">
                        <div class="form-group mg-b-10-force">
                            <label class="form-control-label">Nacionalidad:<abbr title="Este campo es obligatorio">*</abbr>
                            </label>
                            <select class="form-control select2" id="nacionalidad" data-placeholder="Choose country" required="required">
                                <option label="Seleccionar"></option>


                            </select>
                             
                        </div>
                    </div>
                    <!-- col-4 -->


                    <!-- col-4 -->

                    <div class="col-lg-4">
                        <div class="form-group mg-b-10-force">
                            <label class="form-control-label">Ciudad:<abbr title="Este campo es obligatorio">*</abbr></label>
                            <select class="form-control select2" id="ciudad" data-placeholder="Choose country" required="required">
                                <option label="Seleccionar"></option>


                            </select>
                        </div>
                    </div>
                    <!-- col-4 -->

                    <div class="col-lg-4">
                        <div class="form-group mg-b-10-force">
                            <label class="form-control-label">Establecimiento:<abbr title="Este campo es obligatorio">*</abbr>
                            </label>
                            <select class="form-control select2" id="esta" data-placeholder="Choose country" required="required">
                                <option label="Seleccionar"></option>


                            </select>
                            
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Dirección:<abbr title="Este campo es obligatorio">*</abbr>
                            </label>
                            <textarea class="form-control" id="direccion" rows="3" required="required"></textarea>
                             
                        </div>
                    </div>

                    <div class="col-lg-12">
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Descripción</label>
                            <textarea class="form-control" id="descripcion" rows="3"></textarea>
                        </div>
                    </div>
                </div>
                <!-- col-4 -->


            </div>
        </div>
        <!-- row -->

        <br>
        <div>
            <div class="form-layout-footer">
                <button type="submit"  id="btningresar" class="btn btn-info">Ingresar</button>

            </div>
            <!-- form-layout-footer -->
        </div>
        <!-- form-layout -->
    </div>





</asp:Content>
