/**
 * equalize.js
 * Author & copyright (c) 2012: Tim Svensen
 * Dual MIT & GPL license
 *
 * Page: http://tsvensen.github.com/equalize.js
 * Repo: https://github.com/tsvensen/equalize.js/
 *
 * The jQuery plugin for equalizing the height or width of elements.
 *
 * Equalize will accept any of the jQuery Dimension methods:
 *   height, outerHeight, innerHeight,
 *   width, outerWidth, innerWidth.
 *
 * EXAMPLE
 * $('.parent').equalize(); // defaults to 'height'
 * $('.parent').equalize('width'); // equalize the widths
 */
!function(e){e.fn.equalize=function(t){var i=this,t=t||"height",n=t.indexOf("eight")>0?"height":"width";return e.isFunction(e.fn[t])?i.each(function(){var i=e(this).children(),s=0;i.each(function(){var i=e(this)[t]();i>s&&(s=i)}),i.css(n,s+"px")}):!1}}(jQuery,window,document);