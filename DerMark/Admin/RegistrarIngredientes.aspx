<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/index.Master" AutoEventWireup="true" CodeBehind="RegistrarIngredientes.aspx.cs" Inherits="DerMark.Admin.RegistrarIngredientes" %>

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


    <div class="br-pagetitle">
    </div>
    <!-- d-flex -->


    <div class="br-pagebody">
          <div id="alerta">
    </div>
        <div class="br-section-wrapper">
            <form class="needs-validation" novalidate id="form1" method="post" onsubmit="return enviar1();">
                <div class="col-xl-12">
                    <div class="form-layout form-layout-4">
                        <h6 class="br-section-label">Agregar Productos Ingredientes</h6>
                        <%-- <p class="br-section-text">A basic form where labels are aligned in left.</p>--%>
                        <div class="row">
                            <label class="col-sm-4 form-control-label">Nombre del producto <span class="tx-danger">*</span></label>
                            <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                                <input type="text" class="form-control" id="np" placeholder="Nombre del producto" required="required">
                            </div>
                        </div>
                        <!-- row -->
                        <div class="row mg-t-20">
                            <label class="col-sm-4 form-control-label">Cantidad <span class="tx-danger">*</span></label>
                            <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                                <input type="number" id="cantidadU" class="form-control" required="required">
                            </div>
                        </div>

                        <div class="row mg-t-20">
                            <label class="col-sm-4 form-control-label">Unidad de medida <span class="tx-danger">*</span></label>
                            <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                                <select id="unidad_medida" class="custom-select" required="required">
                                    <option value="" selected>Selecciona</option>
                                    <option value="2">U/N</option>
                                    <option value="1">Libra</option>
                                    <option value="2">Litro</option>
                                    <option value="2">Gramo</option>


                                </select>
                            </div>
                        </div>

                        <div class="row mg-t-20">
                            <label class="col-sm-4 form-control-label">Descripción <span class="tx-danger"></span></label>
                            <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                                <textarea rows="2" id="descripcion" class="form-control" placeholder="Descripción"></textarea>
                            </div>
                        </div>
                        <div class="form-layout-footer mg-t-30">
                            <button type="submit" id="btningresar" class="btn btn-info">Agregar</button>

                        </div>
                        <!-- form-layout-footer -->
                    </div>
                    <!-- form-layout -->
                </div>

            </form>

        </div>
    </div>







</asp:Content>
