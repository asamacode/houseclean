
$(function() {
	// Add active state to sidbar nav links
	 var path = window.location.href; // because the 'href' property of the DOM element is the absolute path
	     $(".site-navigation li a.nav-link").each(function() {
	         if (this.href === path) {
	             $(this).addClass("active");
	         }
	     });
});

