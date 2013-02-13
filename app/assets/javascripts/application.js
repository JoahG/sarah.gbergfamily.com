// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
	d = new Date().getSeconds()
	while ((new Date().getSeconds()) < d+1) {}
	$("#header .logo").animate({ top: "+=220px"}, 500 ).animate({ top: "-=5px"}, 100 )
try{Typekit.load();}catch(e){}
});

//*to* 15px top margin 

// .effect("bounce", { times:2, distance:10 }, 200);