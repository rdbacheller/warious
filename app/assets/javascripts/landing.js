// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
function ChangeBorder(id) {
    // Creates the initial variables
    var idDiv = "#"+id;
    var prevSelected = ".boxSelected";

    // Returns (nicely ends the 'click' event) if already selected
    if ($(idDiv).hasClass("boxSelected"))
        return;

    // Deselects the previous selection
    $(prevSelected).addClass("boxDefault");
    $(prevSelected).removeClass("boxSelected");

    // Sets the current selection
    $(idDiv).removeClass("boxDefault");
    $(idDiv).addClass("boxSelected");
}

function ClickHandlers() {
    $(".switchBox").click(function() {
        ChangeBorder($(this).closest(".border").attr("id"));
    });

    return true;
}

$("document").ready(function() {
    var status = ClickHandlers();

    if(!status) {
        alert("There is something wrong. . .");
    }
});