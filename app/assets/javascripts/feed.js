//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

$("document").ready(function() {
    //var status = ClickHandlers();

    /*if(!status) {
        alert("There is something wrong. . .");
    }*/

    $(".selectorBox").click(function() {
        if($(this).is(":checked"))
            $("#block"+$(this).attr("id")).show()
        else
            $("#block"+$(this).attr("id")).hide();
    });
});