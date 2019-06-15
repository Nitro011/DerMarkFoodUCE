<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/index.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="DerMark.Admin.productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <link href="CssModificado/Ingredientes.css" rel="stylesheet" />

    <script src="Ajax/productos.js"></script>

    <div class="br-pagetitle">
    </div>
    <!-- d-flex -->


    <div class="br-pagebody">

        <div class="br-section-wrapper">

            <h6 class="br-section-label">Productos</h6>


            <div class="table-wrapper">
                <a href="RegistrarProducto.aspx" class="btn btn-success active btn-block mg-b-10">Agregar</a>

              

                <table id="datatableProductos" class="table display responsive nowrap">

                    <thead>
                        <tr>
                             <th class="wd-15p">Productos</th>
                            <th class="wd-15p">Cantidad</th>
                            <th class="wd-20p">Unidad de Medida</th>
                              <th class="wd-20p">Costo</th>
                             <th class="wd-20p">Precio Venta</th>

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
