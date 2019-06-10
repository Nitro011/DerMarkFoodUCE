

function validar_telefono(telefono) {
    var regex = /^\(\d{3}\) \d{3}-\d{4}$/;
    return regex.test(telefono) ? true : false;
}



function validar_email(email) {
    var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email) ? true : false;
}



// Para validar el codigo

    (function () {
        'use strict';
        window.addEventListener('load', function () {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function (form) {
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();



//Mascaras
$(document).ready(function () {
    $("input[name*='tel']").mask('(000) 000-0000');



});



//no permite que se escriban numeros en los inputs
function check(e) {
    tecla = (document.all) ? e.keyCode : e.which;

    // Patron de entrada, en este caso solo acepta numeros y letras
    patron = /^([a-zA-Z \xc0-\xff]+)$/;
    tecla_final = String.fromCharCode(tecla);
    return patron.test(tecla_final);
}



//Registrar empleado



function enviar() {

    var apellido = $('#apellido').val();
    var nombre = $('#nombre').val()
    var celular = $('#telefono').val();
    var nacionalidad = $('#nacionalidad').val();
    var email = $('#mail').val();
    var contraseña = $('#psw').val();
    var ciudad = $('#ciudad').val();
    var descripcion = $('#descripcion').val();
    var establecimiento = $('#esta').val();
    var tipo_empleado = $('#te').val();
    var direccion1 = $('#direccion').val();
    var sueldoV = $('#sueldo').val();
    var fnV = $('#fn').val();

    if (nombre == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');

    }


    else if (apellido == "") {


        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');

    }

    else if (validar_telefono(celular) == false) {

        document.getElementById("telefono").style.borderColor = "red";

        $("#alerta").html('<div class="alert alert-info" role="alert"> El telefono contiene datos Inválidos </div>');

    }

    else if (nacionalidad == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');


    }
    else if (validar_email(email)==false) {
        $("#alerta").html('<div class="alert alert-info" role="alert"> El correo electronico no es valido </div>');
    }
   

    else if (contraseña == "") {


        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');

    }

    
    else if (ciudad == "") {


        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');



    }

    else if (direccion == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');


    }


    else if (tipo_empleado == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');
    }

    else if (establecimiento == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');

    }


    else {

        var value = { ciudadID: ciudad, nacionalidadID: nacionalidad, nombre: nombre, apellido: apellido, descripcion: descripcion, celular: celular, contraseña: contraseña, correo_electronico: email, establecimiento: establecimiento, tipoempleado: tipo_empleado, direccionEmple: direccion1, fnN:fnV, sueldo: sueldoV };


        $.ajax({
            url: 'RegistrarEmpleado.aspx/insertar',
            method: 'post',
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(value),
            dataType: "json",
            success: function (data) {
                if (data.d == 1) {


                    $("#alerta").html('<div class="alert alert-danger" role="alert"> La informacion que introdujiste existe en nuestros registros </div>');
                }
                else {

                    $("#alerta").html('<div class="alert alert-success" role="alert"> La informacion que introdujiste se registro correctamente </div>');

                }


            },
            error: function (err) {
                alert(err);
            }

        });
    }

    return false;
}










//Obtener nacionalidad
$(document).ready(function () {

    $.ajax({
        url: 'RegistrarEmpleado.aspx/llenarNacionalidad',
        method: 'post',
        contentType: "application/json",
        dataType: "json",
        success: function (data) {
            $.each(data.d, function (i, value) {


                $("#nacionalidad").append("<option value=" + value.id + ">" + value.nacionalidad + "</option>");
            });


        },
        error: function (err) {
            alert(err);
        }
    });

});





//Llenar ciudad
$(document).ready(function () {

    $.ajax({
        url: 'RegistrarEmpleado.aspx/llenarCiudad',
        method: 'post',
        contentType: "application/json",
        dataType: "json",
        success: function (data) {
            $.each(data.d, function (i, value) {


                $("#ciudad").append("<option value=" + value.id + ">" + value.ciudad + "</option>");
            });


        },
        error: function (err) {
            alert(err);
        }
    });

});










//obtener establecimiento
$(document).ready(function () {

    $.ajax({
        url: 'RegistrarEmpleado.aspx/ObtenerEstablecimiento',
        method: 'post',
        contentType: "application/json",
        dataType: "json",
        success: function (data) {
            $.each(data.d, function (i, value) {


                $("#esta").append("<option value=" + value.id + ">" + value.establecimiento + "</option>");
            });


        },
        error: function (err) {
            alert(err);
        }
    });

});





//obtener tipo de empleado
$(document).ready(function () {

    $.ajax({
        url: 'RegistrarEmpleado.aspx/ObtenerTipoEmpleado',
        method: 'post',
        contentType: "application/json",
        dataType: "json",
        success: function (data) {
            $.each(data.d, function (i, value) {


                $("#te").append("<option value=" + value.id + ">" + value.tipoempleado + "</option>");
            });


        },
        error: function (err) {
            alert(err);
        }
    });

});



