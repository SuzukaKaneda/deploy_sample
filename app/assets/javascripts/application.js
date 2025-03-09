//= require jquery
//= require jquery_ujs
//= require_tree .
$.ajaxSetup({
    headers: {
      'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
    }
  });