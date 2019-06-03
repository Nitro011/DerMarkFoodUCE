<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/index.Master" AutoEventWireup="true" CodeBehind="Ingredientes.aspx.cs" Inherits="DerMark.Admin.Ingredientes" %>

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
    <link href="CssModificado/Ingredientes.css" rel="stylesheet" />
  
        <div class="br-pagetitle">
           
        </div>
        <!-- d-flex -->

 
        <div class="br-pagebody">
                  
            <div class="br-section-wrapper">
                 
                <h6 class="br-section-label">Ingredientes</h6>
                
              
                <div class="table-wrapper">
                    <a href="RegistrarIngredientes.aspx" class="btn btn-success active btn-block mg-b-10">Agregar</a>
                
                    <table id="datatable1" class="table display responsive nowrap">
                           
                        <thead>
                            <tr>
                                <th class="wd-15p">First name</th>
                                <th class="wd-15p">Last name</th>
                                <th class="wd-20p">Position</th>
                                <th class="wd-15p">Start date</th>
                                <th class="wd-10p">Salary</th>
                                <th class="wd-25p">E-mail</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Tiger</td>
                                <td>Nixon</td>
                                <td>System Architect</td>
                                <td>2011/04/25</td>
                                <td>$320,800</td>
                                <td>t.nixon@datatables.net</td>
                            </tr>
                            <tr>
                                <td>Maria</td>
                                <td>Perez</td>
                                <td>Doctora</td>
                                <td>2012/04/25</td>
                                <td>$320,800</td>
                                <td>f</td>
                            </tr>




                        </tbody>
                    </table>
                </div>
                <!-- table-wrapper -->
            </div>
        </div>
  
  
     

</asp:Content>
