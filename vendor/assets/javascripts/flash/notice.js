function close_flash() {
  $("#closer").live('click', function(){
    var flash = $(this).parents('div:first');
    flash.animate({opacity: 1.0, top: '+=20'});
    flash.animate({opacity: 0.75, top: '-=500'}, 300, function() {
      flash.remove();
    });
    return false;
  });
};

$(document).ready(function() {
  close_flash();
});
