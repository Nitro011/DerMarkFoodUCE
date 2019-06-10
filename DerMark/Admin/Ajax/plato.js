



function filter() {
    var keyword = document.getElementById("search").value;
    var select = document.getElementById("select");
    for (var i = 0; i < select.length; i++) {
        var txt = select.options[i].text;
        if (txt.substring(0, keyword.length).toLowerCase() !== keyword.toLowerCase() && keyword.trim() !== "") {
            $(select.options[i]).attr('disabled', 'disabled').hide();
        } else {
            $(select.options[i]).removeAttr('disabled').show();
        }
    }
}




var cont = 0;
var id_fila_selected = [];
function agregar() {

    var ingr = $("#select").val();
    var cant = $("#cant").val();
    var um = $("#unmedida").val();
    var tmv = $("#tm").val();
    var desv = $("#descrip").val();
    if (cant == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');

    }
    else if (ingr == "") {

        $("#alerta").html('<div class="alert alert-info" role="alert"> Datos incompletos </div>');

    }

    else {



        cont++;
        var fila = '<tr id="' + cont + '"><td>' + ingr + '</td><td>' + cant + '</td><td>' + um + '</td><td>' + tmv + '</td><td>' + desv + '</td><td><button type="button" id="delete" class="btn btn-danger btn-sm" onclick="borrar(' + cont + ');">Eliminar</button></td> </tr>';

    $('#tabla').append(fila);

        var ingr = $("#select").val("");
        var cant = $("#cant").val("");
        var um = $("#unmedida").val("");

    return false;
  
    }
}




function borrar(id) {
   

    $('tr#' + id + '').remove();
   
   
  
}




