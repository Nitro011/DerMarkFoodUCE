



function validar_telefono(telefono) {
    var regex = /^\(\d{3}\) \d{3}-\d{4}$/;
    return regex.test(telefono) ? true : false;
}



function validar_email(email) {
    var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email) ? true : false;
}



$(document).ready(function () {
    $("input[name*='tel']").mask('(000) 000-0000');



});



function check(e) {
    tecla = (document.all) ? e.keyCode : e.which;

    // Patron de entrada, en este caso solo acepta numeros y letras
    patron = /^([a-zA-Z \xc0-\xff]+)$/;
    tecla_final = String.fromCharCode(tecla);
    return patron.test(tecla_final);
}

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



//registrar cliente

function enviar() {
    //var nombre = $('#nombre').val();
    var apellido = $('#apellido').val();
    var nombre = $('#nombre').val()
    var celular = $('#celular').val();
    var nacionalidad = $('#nacionalidad').val();
    var email = $('#mail').val();

    var contraseña = $('#contraseña').val();






    if (nombre == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');
        

    }


    else if (apellido == "") {


        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');

    
    }

    else if (nacionalidad == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');

    }

    else if (validar_telefono(celular)==false)
    {
        $("#alerta").html('<div class="alert alert-info" role="alert"> El numero telefonico no es valido </div>');

    }


    else if (validar_email(email) == false) {

      
        $("#alerta").html('<div class="alert alert-info" role="alert"> Correo electronico no válido </div>');
        
   
    }

    else if (contraseña == "") {


        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');

     
    }







    else {

        var value = { nacionalidadID: nacionalidad, nombre: nombre, apellido: apellido, celular: celular, contraseña: contraseña, correo_electronico: email };


        $.ajax({
            url: 'RegistroCliente.aspx/insertar',
            method: 'post',
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(value),
            dataType: "json",
            success: function (data) {
                if (data.d == 1) {


                    $("#alerta").html('<div class="alert alert-danger" role="alert"> La informacion que introdujiste existe en nuestros registros </div>');
                }
                else {

                    //location.href = "../App/Login/Login.aspx";
                    alert('Insertado');

                }


            },
            error: function (err) {
                alert(err);
            }

        });
    }
    return false;
}

//llenar ciudad
$(document).ready(function () {

    $.ajax({
        url: 'RegistroCliente.aspx/llenarNacionalidad',
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

