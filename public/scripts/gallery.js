$(document).ready(function() {
    
    var $ul = $('#caroussel  ul');
    setInterval(function() {
      $ul.animate({marginLeft:'-800px'},2000,function(){
        $ul.find("li:last").after($(this).find("li:first"));
        $ul.css({marginLeft:0});
      });
    },2000);          

 }); 

