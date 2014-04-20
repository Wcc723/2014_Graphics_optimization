$(function() {
  var l, next, pre, t;

  t = 0;
  l = ($('.all').find('li').length - 1) * 100;
  document.onkeydown = function(event) {
    if (event.keyCode === 37 || event.keyCode === 38) {
      pre();
    } else if (event.keyCode === 39 || event.keyCode === 40) {
      next();
    }
    return console.log(-t, l);
  };
  $('.next').on('click', function() {
    return next();
  });
  $('.pre').on('click', function() {
    return pre();
  });
  pre = function() {
    if (t === 0) {

    } else {
      t = t + 100;
      return $('.all').animate({
        top: t + '%'
      }, 500);
    }
  };
  return next = function() {
    if ((-t) === l) {

    } else {
      t = t - 100;
      return $('.all').animate({
        top: t + '%'
      }, 500);
    }
  };
});
