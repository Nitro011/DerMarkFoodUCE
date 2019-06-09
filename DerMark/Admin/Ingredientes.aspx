<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/index.Master" AutoEventWireup="true" CodeBehind="Ingredientes.aspx.cs" Inherits="DerMark.Admin.Ingredientes" %>




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
                            <th class="wd-15p">Productos</th>
                            <th class="wd-15p">Cantidad</th>
                            <th class="wd-20p">Unidad de Medida</th>
                            <th class="wd-15p">Descripción</th>
                            <th class="wd-10p">Estado</th>

                        </tr>
                    </thead>
                   





                </table>

            </div>

            <!-- table-wrapper -->
        </div>
    </div>
    <br>



</asp:Content>
