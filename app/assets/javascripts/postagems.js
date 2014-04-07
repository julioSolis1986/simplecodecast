$.fn.popularCidade = function() {
  var that = this;
  $.post(that.attr('rel'), {id: that.val(), id_input: $(this).parent().find('.cidade_estado').prop('id')}, null, "script");
  
  this.change(function() {
    $.post(that.attr('rel'), {id: that.val(), id_input: $(this).parent().find('.cidade_estado').prop('id')}, null, "script");
  });
}