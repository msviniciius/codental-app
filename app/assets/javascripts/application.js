// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require bootstrap-datepicker
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.pt-BR
//= require jquery.mask
//= require jquery-ui
//= require jquery_ujs
//= require chosen-jquery
//= require cocoon
//= require client_files
//= require toastr
//= require bootstrap-multiselect
//= require bootstrap-sprockets
//= require bootstrap3-typeahead
//= require adminLTE/adminlte

//= require query.dataTables
//= require datatables/dataTables.bootstrap
//= require datatables/dataTables.responsive

//= require moment
//= require moment/pt-br
//= require bootstrap-datetimepicker

//= require actioncable
//= require summernote
//= require summernote/lang/summernote-pt-BR

//= require_tree ./channels

function display_fields(link) {
  if ($(link).hasClass("fa-plus")) {
    $(link).removeClass("fa-plus");
    $(link).addClass("fa-minus");
  } else {
    $(link).removeClass("fa-minus");
    $(link).addClass("fa-plus");
  }
  $(link).parent().next().toggle("fast");
}

document.addEventListener('turbolinks:load', function () {
  $(document).on('cocoon:after-insert', function (e, insertedItem) {
    console.log('Novo campo adicionado:', insertedItem);
    // Ajuste estilos ou ações para o novo campo aqui
  });
});

$(document).ready(function() {
  // Máscara para CPF (###.###.###-##)
  $('.cpf-mask').mask('000.000.000-00', {reverse: true});

  // Máscara para CEP (#####-###)
  $('.cep-mask').mask('00000-000');
});

document.addEventListener('DOMContentLoaded', function () {
  $('.datepicker').datepicker({
    format: 'dd/mm/yyyy',
    autoclose: true,
    language: 'pt-BR'
  });
});
