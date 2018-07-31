// call openNav function when myNav is triggered during click
const openNav = () =>
    document.getElementById("myNav").style.width = "100%";

// call and close the overlay when someone clicks on the close button that triggers closeNav function
const closeNav = () => 
  document.getElementById("myNav").style.width = "0%";
