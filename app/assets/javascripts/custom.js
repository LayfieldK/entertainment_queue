$(document).ready(function() {
	$(".tile .description").dotdotdot({
		height  : 50
	});
});

$(function() {
  $('.btn.toggle').click(function () {
    this.blur();
  });
});

$(function() {
  $('.toggle').click(function() {
    if ($(this).hasClass('movie')){
      $('.tile.movie').slideToggle(500);
    }
    if ($(this).hasClass('tv')){
      $('.tile.tv').slideToggle(500);
    }
    if ($(this).hasClass('music')){
      $('.tile.music').slideToggle(500);
    }
    if ($(this).hasClass('videogame')){
      $('.tile.videogame').slideToggle(500);
    }
    if ($(this).hasClass('book')){
      $('.tile.book').slideToggle(500);
    }
    $(this).toggleClass('blackborder', 100, "easeOutSine");
    $(this).toggleClass('noborder', 100, "easeOutSine");
    return false;
  });
});
