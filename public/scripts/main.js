/* jshint browser: true, devel: true, indent: 2, curly: true, eqeqeq: true, futurehostile: true, latedef: true, undef: true, unused: true */
/* global $, jQuery, document, Modernizr */

function l(data) {
  'use strict';
  console.log(data);
}

jQuery(document).ready(function () {
  'use strict';

  var $bgSlider = $('#background-slider'),
    $main = $('#main-content'),
    $logo = $('#logo'),
    centerLogo = function() {
      var logoHeight = $logo.height(),
        windowHeight = $(window).height();

      $logo.css('margin-top', ( windowHeight - logoHeight ) / 2);

      if ($main.css('opacity') == 0) {
        $main.animate({'opacity':1.0,}, 1000);
      }
    };

  centerLogo();

  $(window).on('resize', function() {
    centerLogo();
  });

  $(document).on('cycle-initialized', '#background-slider', function() {
    $bgSlider.animate({'opacity':1.0,}, 1000);
  });

  $bgSlider.cycle({
    slides: '> div',
    random: false,
    speed: 1000,
  });

});