<%-- 
    Document   : trackTextbox
    Created on : Apr 29, 2015, 8:13:23 PM
    Author     : saleh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
        <script>
            $(document).ready(function(){
                
                $('#textbox').change(function(){
                    butt();
                });
            });
            
            function butt({
                $.ajax({
                type: 'GET',
                url: 'http://localhost:8080/cse336test/testServlet',
                data: // this gets sent
                    function(data){},
                success: function(data){ // watever you get back from your server
                    //$('#textbox').replaceWith(data);
                    var s = $('<div>').attr("id", "thisdiv");
                    s.text().replaceWith(data).appendTo($('body'));
                }
            } 
    });
            
        </script>
    </head>
    <body>
        <form>
        <input type="text" id="textbox" value="textStuff">
        </form>
    </body>
</html>
