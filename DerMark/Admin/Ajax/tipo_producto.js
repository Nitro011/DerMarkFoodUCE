$(function () {
    ObtenerTipoProducto();
});


//validacion

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


function registrar_categoria() {

    var categoria = $('#cat').val();



    if (categoria == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');

    }






    else {

        var value = { ncategoria: categoria };


        $.ajax({
            url: 'TipoProducto.aspx/insertar',
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
    ObtenerTipoProducto();
    return false;
}






//Llenar ingredientes

function ObtenerTipoProducto() {

    $.ajax({
        url: 'TipoProducto.aspx/ObtenertipoProductos',
        method: 'post',
        contentType: "application/json",
        dataType: "json",

        success: function (data) {



            $('#datatabletp').DataTable({
                destroy: true,
                responsive: true,
                language: {
                    searchPlaceholder: 'Buscar',
                    sSearch: '',
                    lengthMenu: '_MENU_ Paginas',
                },


                data: data.d,

                columns: [
                    { 'data': 'id' },
                    { 'data': 'tipo_producto' },




                ],

            });

            $('.dataTables_length select').select2({ minimumResultsForSearch: Infinity });


        },
        error: function (err) {
            alert(err);
        }
    });
};


