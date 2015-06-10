// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
/*var timer;
var colors= [0, 0, 0];
var backdrop = 3;

function livenUp() {
    for(var i = 0; i < colors.length; i++) {
        if( colors[i] >=22 )
            clearInterval(timer);
        else
            colors[i] = colors[i]+1;
        if( backdrop < 1 )
            backdrop = 3;

        //$(".backdrop_"+backdrop--).css("background-color", "rgba("+(colors[i]+5+backdrop)+","+(colors[i]-10+colors[i]++)+","+
        //colors[i]+",0.4)");
    }
}

$(document).on("page:change", function() {
    $(".backdrop_3").click( function() {
        clearInterval(timer);
        colors= [2, 1, 0];
        timer = setInterval(livenUp, 15);
    });
    timer = setInterval(livenUp, 60);
} );*/