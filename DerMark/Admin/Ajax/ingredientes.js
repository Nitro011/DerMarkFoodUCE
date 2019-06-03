$(function () {
    'use strict';

    $('#datatable1').DataTable({
        responsive: true,
        language: {
            searchPlaceholder: 'Search...',
            sSearch: '',
            lengthMenu: '_MENU_ items/page',
        }
    });

   
    // Select2
    $('.dataTables_length select').select2({ minimumResultsForSearch: Infinity });

});