<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/index.Master" AutoEventWireup="true" CodeBehind="RegistrarIngredientes.aspx.cs" Inherits="DerMark.Admin.RegistrarIngredientes" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="Ajax/productos_Ingredientes.js"></script>
    <div class="br-pagetitle">
    </div>
    <!-- d-flex -->


    <div class="br-pagebody">
        <div id="alerta">
        </div>
        <div class="br-section-wrapper">

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
                              


                            </select>
                        </div>
                    </div>
                    <div class="row mg-t-20">
                     
                            <label class="col-sm-4 form-control-label">Costo<span class="tx-danger">*</span></label>
                            <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                                <input type="text" class="form-control" id="cost" placeholder="Costo" required="required">
                            </div>
               
                    </div>

                   
                    <div class="row mg-t-20">
                        <label class="col-sm-4 form-control-label">Descripción <span class="tx-danger"></span></label>
                        <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                            <textarea rows="2" id="descripcion" class="form-control" placeholder="Descripción"></textarea>
                        </div>
                    </div>
                    <div class="form-layout-footer mg-t-30">
                        <button type="submit" id="btningresar" class="btn btn-info" onclick="return enviar1();">Agregar</button>

                    </div>
                    <!-- form-layout-footer -->
                </div>
                <!-- form-layout -->
            </div>



        </div>
    </div>







</asp:Content>
