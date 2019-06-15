


//Llenar ingredientes
$(function () {

   
        $.ajax({
            url: 'Ingredientes.aspx/ObtenerIngredientes',
            method: 'post',
            contentType: "application/json",
            dataType: "json",
      
            success: function (data) {

               

                $('#datatable1').DataTable({
                    destroy: true,
                    responsive: true,
                    language: {
                        searchPlaceholder: 'Buscar',
                        sSearch: '',
                        lengthMenu: '_MENU_ Paginas',
                    },

                  
                    data: data.d,
               
                    columns: [
                        { 'data': 'nombres_productos' },
                        { 'data': 'cantidad' },
                        { 'data': 'unidadMedidastr' },
                        { 'data': 'costo' },
                    
                        { 'data': 'descripcion' },
                        { 'data': 'estado' }
                            


                    ],
                     
                });

                $('.dataTables_length select').select2({ minimumResultsForSearch: Infinity });


            },
            error: function (err) {
                alert(err);
            }
        });
        
});


