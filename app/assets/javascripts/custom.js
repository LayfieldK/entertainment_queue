$(function() {
  $('.btn.toggle').click(function () {
    this.blur();
  });
});

$(function() {
  $('.toggle').click(function() {
    if ($(this).hasClass('movie')){
      $('.tile.movie').toggle(1000);
    }
    if ($(this).hasClass('tv')){
      $('.tile.tv').toggle(1000);
    }
    if ($(this).hasClass('music')){
      $('.tile.music').toggle(1000);
    }
    if ($(this).hasClass('videogame')){
      $('.tile.videogame').toggle(1000);
    }
    if ($(this).hasClass('book')){
      $('.tile.book').toggle(1000);
    }
    $(this).toggleClass('blackborder', 100, "easeOutSine");
    $(this).toggleClass('noborder', 100, "easeOutSine");
    return false;
  });
});
