// call openNav function when myNav is triggered during click
const openNav = () =>
    document.getElementById("myNav").style.width = "100%";

// call and close the overlay when someone clicks on the close button that triggers closeNav function
const closeNav = () => 
  document.getElementById("myNav").style.width = "0%";

// handles resizing of desktop navbar
$(document).ready(function(){
  var scrollTop = 0;
  $(window).scroll(function(){
    scrollTop = $(window).scrollTop();
     $('.counter').html(scrollTop);
    
    if (scrollTop >= 100) {
      $('#nav-desktop').addClass('scrolled-nav');
      $('.site-title').css("margin-top", "2rem");
    } else if (scrollTop < 100) {
      $('#nav-desktop').removeClass('scrolled-nav');
    } 
  }); 
});

// does not work but keep just in case :3
// function current_url(){ 
//   if (window.location.pathname === "/lenders"){
//      // document.borrower.action = "/lenders";
//      document.getElementById('borrower_form').style.display = 'none';
//   } else if(window.location.pathname === "/borrowers"){
//      document.getElementById('lender_form').style.display = 'none';
//   }else {
//   	return;
//   }
// } 
// window.onload = current_url();

// this function only displays one of the forms in according to the path 
window.onload =	function current_url(){
									if (window.location.pathname === "/lenders"){
								     // document.borrower.action = "/lenders";
								     document.getElementById('borrower_form').style.display = 'none';
								  } else if (window.location.pathname === "/borrower"){
								     document.getElementById('lender_form').style.display = 'none';
									}
								} 

