// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
function ChangePost(id) {
    // Creates the initial variables
    var idDiv = "#"+id;
    var prevSelected = ".boxSelected";
    var active;
    var prevActive = $(".activePost");
    if($(idDiv).attr("id") == "switchOne")
        active = "#postOne";
    else if($(idDiv).attr("id") == "switchTwo")
        active = "#postTwo";
    else if($(idDiv).attr("id") == "switchThree")
        active = "#postThree";
    else if($(idDiv).attr("id") == "switchFour")
        active = "#postFour";

    // Returns (nicely ends the 'click' event) if already selected
    if ($(idDiv).hasClass("boxSelected"))
        return;

    // Deselects the previous selection
    $(prevSelected).addClass("boxDefault");
    $(prevSelected).removeClass("boxSelected");
    $(prevActive).removeClass("activePost");
    $(prevActive).addClass("inactivePost");

    // Sets the current selection
    $(idDiv).removeClass("boxDefault");
    $(idDiv).addClass("boxSelected");
    $(active).addClass("activePost");
    $(active).removeClass("inactivePost");
}

function ClickHandlers() {
    $(".switchBox").click(function() {
        ChangePost($(this).closest(".border").attr("id"));
    });

    return true;
}

$("document").ready(function() {
    var status = ClickHandlers();

    if(!status) {
        alert("There is something wrong. . .");
    }
});