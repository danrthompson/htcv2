$(document).ready(function(){function e(e){e.wrap("<div class='table-wrapper' />");var t=e.clone();t.find("td:not(:first-child), th:not(:first-child)").css("display","none"),t.removeClass("responsive"),e.closest(".table-wrapper").append(t),t.wrap("<div class='pinned' />"),e.wrap("<div class='scrollable' />")}function t(e){e.closest(".table-wrapper").find(".pinned").remove(),e.unwrap(),e.unwrap()}var i=!1,n=function(){return $(window).width()<767&&!i?(i=!0,$("table.responsive").each(function(t,i){e($(i))}),!0):(i&&$(window).width()>767&&(i=!1,$("table.responsive").each(function(e,i){t($(i))})),void 0)};$(window).load(n),$(window).bind("resize",n)});