
$(document).ready(function() {
  $('a.ajax, form.ajax').jaxy();
  $('a.submit').submitOnClick();
  $('select.submit').submitOnChange();
})