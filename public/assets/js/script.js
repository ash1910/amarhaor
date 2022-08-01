 //Cookies
 $(document).ready(function() {


    $('#newcookies').hide();

    $('.modalBtn').click(function() {
        console.log('clicked')
        $('#newcookies').hide()
        localStorage.setItem('checked', true)
        console.log(localStorage.getItem('checked', 'set'));
    })
    var data = localStorage.getItem('checked');
    if (!data) {
        $('#newcookies').show();
    }
});
//fixed navbar
document.addEventListener("DOMContentLoaded", function(){
    window.addEventListener('scroll', function() {
        if (window.scrollY > 50) {
          document.getElementById('navbar_top').classList.add('fixed-top', 'fixed-logo');
          // add padding top to show content behind navbar
          navbar_height = document.querySelector('.navbar').offsetHeight;
          document.body.style.paddingTop = navbar_height + 'px';
        } else {
          document.getElementById('navbar_top').classList.remove('fixed-top', 'fixed-logo');
           // remove padding top from body
          document.body.style.paddingTop = '0';
        } 
    });
  }); 
//before-after banner
function beforeAfter() {
  document.getElementById('compare').style.width = document.getElementById('slider').value + "%";
}