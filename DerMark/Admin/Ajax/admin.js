


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


$(document).ready(function () {
    $("input[name*='tel']").mask('(000) 000-0000');
    $("input[name*='telem']").mask('(000) 000-0000');

    $("input[name*='rnc']").mask('0000000000');


});



function check(e) {
    tecla = (document.all) ? e.keyCode : e.which;

    // Patron de entrada, en este caso solo acepta numeros y letras
    patron = /^([a-zA-Z \xc0-\xff]+)$/;
    tecla_final = String.fromCharCode(tecla);
    return patron.test(tecla_final);
}




//Registrar empleado


function enviar() {
    //var nombre = $('#nombre').val();
    var apellido = $('#apellido').val();
    var nombre = $('#nombre').val()
    var celular = $('#celular').val();
    var nacionalidad = $('#nacionalidad').val();
    var email = $('#mail').val();
    var repetircon = $('#repetirContraseña').val();
    var contraseña = $('#contraseña').val();
    var ciudad = $('#ciudad').val();
    var pais = $('#pais').val();
    var fn = $('#fn').val();
    var descripcion = $('#descripcion').val();
    var ciudadEm = $('#ciudaddeb').val();
    var paisE = $('#paisdeb').val();
    var nombreEm = $('#nombredeb').val();
    var RNC = $('#RNC').val();
    var direccionEm = $('#direccindeb').val();
    var descripcionEm = $('#descripciondeb').val();
    var emailempresa = $('#emailempresa').val();
    var telempresa = $('#celularempresa').val();



   

    if (contraseña == repetircon && contraseña != "" && repetircon != "") {
        document.getElementById("contraseña").style.borderColor = "green";
        document.getElementById("repetirContraseña").style.borderColor = "green";
    }




    if (nombre == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');

    }


    else if (apellido == "") {


        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');

    }

    else if (nacionalidad == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Seleccionar nacionalidad </div>');


    }

    else if (validar_email(email) == false) {


        $("#alerta").html('<div class="alert alert-info" role="alert"> Correo electronico no válido </div>');

    }
    else if (validar_telefono(celular) == false)
    {
        $("#alerta").html('<div class="alert alert-info" role="alert"> El numero telefonico no es valido </div>');
    }
    else if (contraseña == "") {



        $("#alerta").html('<div class="alert alert-info" role="alert"> Seleccionar nacionalidad </div>');

    }

    else if (contraseña != repetircon) {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Las contraseña no coinciden </div>');

        $('#repetirContraseña').val("");
        $('#contraseña').val("");

      
    }

    else if (ciudad == "") {


        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos!! </div>');



    }

    else if (pais == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos!! </div>');


    }

    else if (fn == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos!! </div>');

    }

    else if (paisE == "") {


        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos!! </div>');

    }

    else if (ciudadEm == "") {


        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos!! </div>');

    }
    else if (validar_email(emailempresa) == false) {
        $("#alerta").html('<div class="alert alert-info" role="alert"> Correo electronico no válido </div>');


    }
    else if (nombreEm == "") {


        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos!! </div>');
    }



    else if  (validar_telefono(telempresa) == false){

        $("#alerta").html('<div class="alert alert-info" role="alert"> El numero telefonico no es valido </div>');
       
    }

    else if (RNC == "") {


        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos!! </div>');
    }

    else if (direccionEm == "") {


        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos!! </div>');
    }

    else {

        var value = { ciudadID: ciudad, nacionalidadID: nacionalidad, paisID: pais, nombre: nombre, apellido: apellido, fecha_de_nacimiento: fn, descripcion: descripcion, celular: celular, contraseña: contraseña, correo_electronico: email, ciudadIDEmpresa: ciudadEm, paisIDEmpresa: paisE, NombreEmpresa: nombreEm, direccionEmpresa: direccionEm, descripcionEmpresa: descripcionEm, RNCEmpresa: RNC, correoempresa: emailempresa, telempresa1: telempresa };


        $.ajax({
            url: 'RegistroAdmin.aspx/insertar',
            method: 'post',
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(value),
            dataType: "json",
            success: function (data) {
                if (data.d == 1) {


                    $("#alerta").html('<div class="alert alert-danger" role="alert"> La informacion que introdujiste existe en nuestros registros </div>');
                }
                else {

                    location.href = "../App/Login/Login.aspx";

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
        url: 'RegistroAdmin.aspx/llenarNacionalidad',
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



//obtener pais
$(document).ready(function () {

    $.ajax({
        url: 'RegistroAdmin.aspx/llenarPais',
        method: 'post',
        contentType: "application/json",
        dataType: "json",
        success: function (data) {
            $.each(data.d, function (i, value) {


                $("#pais").append("<option value=" + value.id + ">" + value.pais + "</option>");
            });


        },
        error: function (err) {
            alert(err);
        }
    });

});




//Obtener ciudad
$(document).ready(function () {

    $.ajax({
        url: 'RegistroAdmin.aspx/llenarCiudad',
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





//obtener ciudad empresa
$(document).ready(function () {

    $.ajax({
        url: 'RegistroAdmin.aspx/llenarCiudad',
        method: 'post',
        contentType: "application/json",
        dataType: "json",
        success: function (data) {
            $.each(data.d, function (i, value) {


                $("#ciudaddeb").append("<option value=" + value.id + ">" + value.ciudad + "</option>");
            });


        },
        error: function (err) {
            alert(err);
        }
    });

});




//obtener pais empresa
$(document).ready(function () {

    $.ajax({
        url: 'RegistroAdmin.aspx/llenarPais',
        method: 'post',
        contentType: "application/json",
        dataType: "json",
        success: function (data) {
            $.each(data.d, function (i, value) {


                $("#paisdeb").append("<option value=" + value.id + ">" + value.pais + "</option>");
            });


        },
        error: function (err) {
            alert(err);
        }
    });

});





