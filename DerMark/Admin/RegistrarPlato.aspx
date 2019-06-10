<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/index.Master" AutoEventWireup="true" CodeBehind="RegistrarPlato.aspx.cs" Inherits="DerMark.Admin.RegistrarPlato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="Ajax/plato.js"></script>

    <div class="br-pagetitle">
    </div>
    <!-- d-flex -->


    <div class="br-pagebody">
        <div id="alerta">
        </div>

        <div class="br-section-wrapper">
            <h6 class="br-section-label">Nuevo plato</h6>
            <br>

            <div class="col-6">
                <div class="form-group">
                    <label for="exampleFormControlInput1">Nombre del plato</label>
                    <input type="text" class="form-control" id="nplato" placeholder="Nombre del plato" required="required">
                </div>
                <br />
                <div class="form-group">
                    <label class="br-section-label">Añadir ingredientes</label>

                </div>


                <div class="form-group">
                    <label for="exampleFormControlInput1">Buscar ingrediente</label>
                    <input type="text" name="search" class="form-control" id="search" placeholder="Nombre del plato" onkeyup="filter();" />
                    <br>

                    <select id="select" multiple class="form-control" required="required">
                        <option>Cupcake</option>
                        <option>Cunut</option>
                        <option>Eclair</option>
                        <option>Froyo</option>
                        <option>Gingerbread</option>
                        <option>Honeycomb</option>
                        <option>Ice Cream Sandwich</option>
                        <option>Jelly Bean</option>
                        <option>KitKat</option>
                        <option>Lollipop</option>
                        <option>Marshmallow</option>
                        <option>Nougat</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Cantidad</label>
                    <input type="number" class="form-control" id="cant" required="required">
                </div>


                <div class="form-group">
                    <label for="exampleFormControlSelect1">Unidad de medida</label>
                    <select class="form-control" id="unmedida" required="required">
                        <option value="">Seleccionar</option>
                        <option value="libra">Libra</option>
                        <option value="litro">Litro</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="exampleFormControlInput1">Tiempo de preparación</label>
                    <input type="time" class="form-control" id="tm" required="required">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Descripción</label>
                    <textarea class="form-control" id="descrip" rows="3"></textarea>
                </div>

                <button id="bt_add" class="btn btn-success" onclick="return agregar();">Agregar</button>
            </div>


            <h6 class="br-section-label">Ingredientes </h6>
            <div class="bd bd-gray-300 rounded table-responsive">
                <table id="tabla" class="table mg-b-0">
                    <thead>
                        <tr>

                            <th>Ingrediente</th>
                            <th>Cantidad</th>
                            <th>Unidad de medida</th>
                              <th>Tiempo de preparación</th>
                              <th>Descripción</th>
                            <th>Eliminar</th>

                        </tr>
                    </thead>

                </table>
            </div>
            <!-- bd -->
            <br>
            <button type="button" class="btn btn-primary">Guardar</button>

        </div>

    </div>



    <br>
</asp:Content>
