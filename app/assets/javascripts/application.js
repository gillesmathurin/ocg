// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require tinymce-jquery
//= require_tree .

$(function() {
  $('textarea').tinymce({
    theme: 'advanced'
  });
});

// Menu effect plugin
$(function() { $(".lavaLamp").lavaLamp({ fx: "linear", speed: 300 })});

// helper function for the anythingSlider plugin
function formatText(index, panel) { return index + ""; }

// call of the anythingSlider plugin
$(function() {
    $('.anythingSlider').anythingSlider({
        easing: "easeInOutExpo",        // Anything other than "linear" or "swing" requires the easing plugin
        autoPlay: true,                 // This turns off the entire FUNCTIONALY, not just if it starts running or not.
        delay: 3000,                    // How long between slide transitions in AutoPlay mode
        startStopped: false,            // If autoPlay is on, this can force it to start stopped
        animationTime: 600,             // How long the slide transition takes
        hashTags: true,                 // Should links change the hashtag in the URL?
        buildNavigation: false,          // If true, builds and list of anchor links to link to each slide
		    pauseOnHover: true,             // If true, and autoPlay is enabled, the show will pause on hover
		    startText: "Go",             // Start text
        stopText: "Stop",               // Stop text
        navigationFormatter: formatText       // Details at the top of the file on this use (advanced use)
    });
    
    $("#slide-jump").click(function(){
        $('.anythingSlider').anythingSlider(6);
    });    
});

// Little function to correctly layout the galleries multicolumns index page
$(function () {
  $($(".gallery-name")[2]).css("margin-top","50px");
})

// Photos Gallery Slider function
$(function(){
    window.myFlux = new flux.slider('#slider', {
      pagination:false
    });
});

// animate the displaying of the flash messages
$(function() {
  $('div#alert').slideDown(400, 'linear', function() {
    $(this).delay(2000).slideUp("normal");
  });
  $('div#notice').slideDown(400, 'linear', function() {
    $(this).delay(2000).slideUp("normal");
  });
  // close the flash box
  $('.close-it').click(function(){
    $(this).parent().slideUp('fast');
    return false;
  });
  return false;
});