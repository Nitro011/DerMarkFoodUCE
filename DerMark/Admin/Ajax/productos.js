$(function () {
    ObtenerProducto();
});


//Llenar ingredientes

function ObtenerProducto() {

    $.ajax({
        url: 'Productos.aspx/ObtenerProductos',
        method: 'post',
        contentType: "application/json",
        dataType: "json",

        success: function (data) {



            $('#datatableProductos').DataTable({
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
                    { 'data': 'tip_Producto' },
                    { 'data': 'nombre_producto' },
                    { 'data': 'descripcion' },
                    { 'data': 'cantidad' },
                    { 'data': 'precio' }
              



                ],

            });

            $('.dataTables_length select').select2({ minimumResultsForSearch: Infinity });


        },
        error: function (err) {
            alert(err);
        }
    });
};


//obtener tipo de empleado
$(document).ready(function () {

    $.ajax({
        url: 'RegistrarProducto.aspx/ObtenerCategoria',
      
        method: 'post',
        contentType: "application/json",
        dataType: "json",
        success: function (data) {
            $.each(data.d, function (i, value) {


                $("#dropcategoria").append("<option value=" + value.id + ">" + value.tipo_producto + "</option>");
            });


        },
        error: function (err) {
            alert(err);
        }
    });

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


function registrar_producto() {

    var nombre_productov = $('#np').val();
    var categoriav = $('#dropcategoria').val();
    var cantidadv = $('#cantidadU').val();
    var preciov = $('#pre').val();
    var descripcionv = $('#descripcion').val();



    if (nombre_productov == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');

    }
    if (categoriav == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');

    }

    if (cantidadv == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');

    }

    if (preciov == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');

    }








    else {

        var value = { nombreProducto: nombre_productov, categoria: categoriav, cantidad: cantidadv, precio: preciov, descripcion: descripcionv };


        $.ajax({
            url: 'RegistrarProducto.aspx/insertar',
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

                    location.href = "Productos.aspx";

                }


            },
            error: function (err) {
                alert(err);
            }

        });
    }
 
    return false;
}


