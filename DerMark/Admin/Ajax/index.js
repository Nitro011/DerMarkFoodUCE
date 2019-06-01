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