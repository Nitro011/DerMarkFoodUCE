//Script para mantener activo la sesion
$().ready(function () {

    $(document).everyTime(3000, function () {

        $.ajax({
            type: "POST",
            url: "ValidarSession1.aspx/KeepActiveSession",
            data: {},
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: true,
            success: VerifySessionState,
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert(textStatus + ": " + XMLHttpRequest.responseText);
            }
        });

    });


});

var cantValidaciones = 0;

function VerifySessionState(result) {

    if (result.d) {
        $("#EstadoSession").text("activo");
    }
    else
        $("#EstadoSession").text("expiro");

    $("#cantValidaciones").text(cantValidaciones);
    cantValidaciones++;

}

function SessionAbandon() {

    $.ajax({
        type: "POST",
        url: "ValidarSession1.aspx/SessionAbandon",
        data: {},
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        async: true,
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert(textStatus + ": " + XMLHttpRequest.responseText);
        }
    });

}





//Obtener informacion index
$(document).ready(function () {
   
    $.ajax({
        url: 'index.aspx/obtenerinfo',
        method: 'post',
        contentType: "application/json",
        dataType: "json",
        success: function (data) {
            $.each(data.d, function (i, value) {


                $("#email").html(value.correoelectronico);
                $("#namefull").html(value.nombrecompleto);
                $("#username").html(value.nombreusuario);
            });


        },
        error: function (err) {
            alert(err);
        }
    });

});




//cerrar el index
$(document).ready(function () {
    $('#btnexit').click(function () {
        $.ajax({
            url: 'index.aspx/Exit',
            method: 'post',
            contentType: "application/json",
            dataType: "json",
            success: function (data) {

                if (data.d = 1) {
                    location.href = "../App/Login/Login.aspx";


                }

            },
            error: function (err) {
                alert(err);
            }
        });

    });
});