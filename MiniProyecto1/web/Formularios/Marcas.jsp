<%-- 
    Document   : Marcas
    Created on : 10/03/2015, 11:32:39 PM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action=".jsp" method="post" name="Marcas">
            <table>
                <tr><td>Nombre producto</td><td><input type="text" name="Nombre_producto "></td></tr>  
                <tr><td>idTipoProducto</td><td><input type="text" name="idTipoProducto "></td></tr>  
                <tr><td><input type="submit" value="Enviar"></td></tr>  
            </table>
        </form>
    </body>
</html>
