/**
 * Main JavaScript for Book Landing Page
 */

$(document).ready(function () {
  // Sticky Navbar when scrolling past section-1
  $(window).scroll(function () {
    const $section2 = $('.section-2');
    if ($section2.length) {
      let oTop = $section2.offset().top - window.innerHeight;
      if ($(window).scrollTop() > oTop) {
        $('.navbar').addClass('sticky');
      } else {
        $('.navbar').removeClass('sticky');
      }
    }
  });

  // Animated Numbers Counter
  let nCount = selector => {
    $(selector).each(function () {
      let targetValue = parseInt($(this).text().replace(/[^0-9]/g, ''), 10);
      $(this).prop('Counter', 0).animate({
        Counter: targetValue
      }, {
        duration: 3000,
        easing: 'swing',
        step: function (value) {
          $(this).text(Math.ceil(value));
        }
      });
    });
  };

  let position = 0;
  $(window).scroll(function () {
    const $numbers = $('.numbers');
    if ($numbers.length) {
      let oTop = $numbers.offset().top - window.innerHeight;
      if (position === 0 && $(window).scrollTop() >= oTop) {
        position = 1;
        nCount('.rect > h1');
      }
    }
  });
});
