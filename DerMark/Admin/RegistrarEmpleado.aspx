<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/index.Master" AutoEventWireup="true" CodeBehind="RegistrarEmpleado.aspx.cs" Inherits="DerMark.Admin.RegistrarEmpleado" %>





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <script src="Ajax/empleado.js"></script>


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
                <form class="needs-validation" novalidate id="form1" method="post" onsubmit="return enviar();">
                    <div class="row mg-b-25">
                        <div class="col-lg-4">
                            <div class="form-group">
                                <label class="form-control-label">
                                    Nombre:<abbr title="Este campo es obligatorio">*</abbr>
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
                                <label class="form-control-label">
                                    Correo electronico:<abbr title="Este campo es obligatorio">*</abbr>
                                    <span id="emailOK"></span>
                                </label>
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
                                <label class="form-control-label">
                                    Telefono:<abbr title="Este campo es obligatorio">*</abbr>
                                </label>
                                <input class="form-control" type="text" id="telefono" name="tel" placeholder="Telefono" required="required">
                            </div>
                        </div>
                        <!-- col-4 -->
                          <!-- col-4 -->
                        <div class="col-lg-4">
                            <div class="form-group ">
                                <label class="form-control-label">
                                    Fecha de nacimiento:<abbr title="Este campo es obligatorio">*</abbr>
                                </label>
                                <input class="form-control" type="date" id="fn"  required="required">
                            </div>
                        </div>
                        <!-- col-4 -->
                          <!-- col-4 -->
                        <div class="col-lg-4">
                            <div class="form-group ">
                                <label class="form-control-label">
                                    sueldo:<abbr title="Este campo es obligatorio">*</abbr>
                                </label>
                                <input class="form-control" type="text" id="sueldo" placeholder="Sueldo" required="required">
                            </div>
                        </div>
                        <!-- col-4 -->

                        <div class="col-lg-4">
                            <div class="form-group mg-b-10-force">
                                <label class="form-control-label">
                                    Tipo de empleado:<abbr title="Este campo es obligatorio">*</abbr>
                                </label>
                                <select class="form-control select2" id="te" data-placeholder="Choose country" required="required">

                                    <option label="Seleccionar"></option>


                                </select>

                            </div>
                        </div>


                        <!-- col-4 -->
                        <div class="col-lg-4">
                            <div class="form-group mg-b-10-force">
                                <label class="form-control-label">
                                    Nacionalidad:<abbr title="Este campo es obligatorio">*</abbr>
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
                                <label class="form-control-label">
                                    Establecimiento:<abbr title="Este campo es obligatorio">*</abbr>
                                </label>
                                <select class="form-control select2" id="esta" data-placeholder="Choose country" required="required">
                                    <option label="Seleccionar"></option>


                                </select>

                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="exampleFormControlTextarea1">
                                    Dirección:<abbr title="Este campo es obligatorio">*</abbr>
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

                        <div>
                            <div class="form-layout-footer">
                                <button type="submit" id="btningresar" class="btn btn-info" onclick="return enviar();">Ingresar</button>

                            </div>
                            <!-- form-layout-footer -->
                        </div>


                    </div>
                </form>
                <!-- col-4 -->


            </div>
        </div>
        <!-- row -->

        <br>

        <!-- form-layout -->
    </div>





</asp:Content>
