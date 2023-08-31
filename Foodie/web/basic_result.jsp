<%-- 
    Document   : basic_result
    Created on : May 9, 2023, 5:34:44 PM
    Author     : Ghozy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Basic Result</title>
    </head>
    <body>
        <% 
            int operandSatu = Integer.parseInt(request.getParameter("operandSatu"));
            int operandDua = Integer.parseInt(request.getParameter("operandDua"));
            String operator = request.getParameter("operator");  
            int hasil = 0;
            
            switch(operator){
                case "Tambah":
                    hasil = operandSatu + operandDua;
                    break;
                case "Kurang":
                    hasil = operandSatu - operandDua;
                    break;
                case "Kali":
                    hasil = operandSatu * operandDua;
                    break;
                case "Bagi":
                    hasil = operandSatu / operandDua;
                    break;
            }
        %>
        <h1>Basic Result</h1>
        <p> <%= operandSatu %>  </p>
        <p> <%= operator %>  </p>
        <p> <%= operandDua %>  </p>
        <p> =  </p>
        <p> <%= hasil %>  </p>
    </body>
</html>
