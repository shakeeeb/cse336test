$( document ).ready(function() {
    console.log( "ready!" );
    
    
        $('#changeButt').click(function(){
            console.log("butt activated");
            butt();
        });
});

function butt(){

    $.ajax({
            type:'GET',
            url: 'http://localhost:8080/cse336test/testServlet',
            beforeSend: function(){},
            
            data: function(data){ // whateve get ssent to the server
              //  console.log(data);
            },  
            success:function(data){ // whatever you get back
                    //Need to split data here
                    console.log(data);
                    $('#test p').replaceWith(data);
                    
            },
            complete: function(){ // you also get soemthing back, 
                // complete runs regardless of success or failure
                var s = $('<div>').attr("id", "thisdiv");
                    s.text("bluenigga").appendTo($('body'));
                   s.css({
                     'font-size':'40px'
                   });
            }
        });
}