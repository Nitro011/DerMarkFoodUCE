<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/index.Master" AutoEventWireup="true" CodeBehind="TipoProducto.aspx.cs" Inherits="DerMark.Admin.TipoProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CssModificado/Ingredientes.css" rel="stylesheet" />
       <script src="Ajax/tipo_producto.js"></script>

    <div class="br-pagetitle">
    </div>
    <!-- d-flex -->


    <div class="br-pagebody">
           <div id="alerta">
    </div>
        <div class="br-section-wrapper">

            <h6 class="br-section-label">Categoria de productos</h6>



            <div class="table-wrapper">

                <div class="col-12">
                    <div class="form-row align-items-center">
                        <div class="col-auto">

                            <input type="text" class="form-control mb-2" id="cat" placeholder="Categoria" required="required"/>


                        </div>
                         

                        <div class="col-auto">
                            <button type="submit" class="btn btn-primary mb-2" onclick="return registrar_categoria();">Registrar</button>
                        </div>
                    </div>
                </div>


                <br>
                <br>


                <table id="datatabletp" class="table display responsive nowrap">

                    <thead>
                        <tr>
                            <th class="wd-15p">Codigo</th>
                            <th class="wd-15p">Tipo de producto</th>
                           


                        </tr>
                    </thead>






                </table>

            </div>

            <!-- table-wrapper -->
        </div>
    </div>
    <br>
</asp:Content>
