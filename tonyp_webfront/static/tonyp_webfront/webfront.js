function topNavResponse() {
  var x = document.getElementById("TP-TopNav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}