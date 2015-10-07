<<<<<<< HEAD
          
 $(document).ready(function() {
 	alert('The document is ready!');
      }
      );      
            $("#carousel ul li img").animate({marginLeft:'-600px'},2000,function(){
                
                setInterval(function(){
                $(this).find("li:last").after($(this).find("li:first"));
                $(this).css({marginLeft:0});
                
                });
            },4000);
            });
        

=======
$(document).ready(function() {
    
    var $ul = $('#caroussel  ul');
    setInterval(function() {
      $ul.animate({marginLeft:'-800px'},2000,function(){
        $ul.find("li:last").after($(this).find("li:first"));
        $ul.css({marginLeft:0});
      });
    },2000);          
>>>>>>> 4d3526d17619b7c4ab89a4dc48ea1b334f053309

 }); 

