          
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
        



