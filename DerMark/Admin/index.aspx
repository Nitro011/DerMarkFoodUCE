<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/index.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DerMark.Admin.index1" %>




<%--header--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

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
                            <h6 class="logged-fullname" id="namefull"></h6>
                            <p id="email"></p>
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


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="br-pagetitle">
        <%--<i class="icon icon ion-ios-photos-outline"></i>--%>
        <%--  <div>
          <h4>Dashboard Cards</h4>
          <p class="mg-b-0">Dashboard cards are used in an overview or summary of a project, for crm or form cms.</p>
        </div>--%>
    </div>
    <!-- d-flex -->


    <div class="br-pagebody pd-x-20 pd-sm-x-30">
        <div class="row row-sm mg-t-20">
            <div class="col-sm-6 col-lg-3">
                <div class="bg-white rounded shadow-base overflow-hidden">
                    <div class="pd-x-20 pd-t-20 d-flex align-items-center">
                        <i class="ion ion-coffee tx-80 lh-0 tx-primary op-5"></i>
                        <div class="mg-l-20">
                            <p class="tx-10 tx-spacing-1 tx-mont tx-semibold tx-uppercase mg-b-10">Ordenes</p>
                            <p class="tx-32 tx-inverse tx-lato tx-black mg-b-0 lh-1">0</p>
                            <span class="tx-12 tx-roboto tx-gray-600"></span>
                        </div>
                    </div>
                    <div id="ch5" class="ht-60 tr-y-1"></div>
                </div>
            </div>
            <!-- col-4 -->
            <div class="col-sm-6 col-lg-3 mg-t-20 mg-sm-t-0">
                <div class="bg-white rounded shadow-base overflow-hidden">
                    <div class="pd-x-20 pd-t-20 d-flex align-items-center">
                        <i class="ion ion-pizza tx-80 lh-0 tx-purple op-5"></i>
                        <div class="mg-l-20">
                            <p class="tx-10 tx-spacing-1 tx-mont tx-semibold tx-uppercase mg-b-10">Productos</p>
                            <p class="tx-32 tx-inverse tx-lato tx-black mg-b-0 lh-1">0</p>
                            <span class="tx-12 tx-roboto tx-gray-600"></span>
                        </div>
                    </div>
                    <div id="ch6" class="ht-60 tr-y-1"></div>
                </div>
            </div>
            <!-- col-4 -->
            <div class="col-sm-6 col-lg-3 mg-t-20 mg-lg-t-0">
                <div class="bg-white rounded shadow-base overflow-hidden">
                    <div class="pd-x-20 pd-t-20 d-flex align-items-center">
                        <i class="ion ion-calendar tx-80 lh-0 tx-teal op-5"></i>
                        <div class="mg-l-20">
                            <p class="tx-10 tx-spacing-1 tx-mont tx-semibold tx-uppercase mg-b-10">Ventas</p>
                            <p class="tx-32 tx-inverse tx-lato tx-black mg-b-0 lh-1">0</p>
                            <span class="tx-12 tx-roboto tx-gray-600"></span>
                        </div>
                    </div>
                    <div id="ch7" class="ht-60 tr-y-1"></div>
                </div>
            </div>
            <!-- col-4 -->
            <div class="col-sm-6 col-lg-3 mg-t-20 mg-lg-t-0">
                <div class="bg-white rounded shadow-base overflow-hidden">
                    <div class="pd-x-20 pd-t-20 d-flex align-items-center">
                        <i class="ion ion-spoon tx-80 lh-0 tx-teal op-5"></i>
                        <div class="mg-l-20">
                            <p class="tx-10 tx-spacing-1 tx-mont tx-semibold tx-uppercase mg-b-10">Platos</p>
                            <p class="tx-32 tx-inverse tx-lato tx-black mg-b-0 lh-1">0</p>
                            <span class="tx-12 tx-roboto tx-gray-600"></span>
                        </div>
                    </div>
                    <div id="ch7" class="ht-60 tr-y-1"></div>
                </div>
            </div>
            <!-- col-4 -->
        </div>
        <!-- row -->

    </div>








</asp:Content>
