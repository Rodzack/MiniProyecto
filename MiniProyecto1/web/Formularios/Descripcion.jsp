<%-- 
    Document   : Formularios
    Created on : 10/03/2015, 09:30:06 AM
    Author     : Aprendiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <form action=".jsp" method="post">
            <table>
                <tr><td>Capacidad</td><td><input type="text" name="Capacidad "></td></tr>  
                <tr><td>Velocidad </td><td><input type="text" name="Velocidad"></td></tr>  
                <tr><td>tipoDeConexion</td><td><input type="text" name="tipoDeConexion "></td></tr>  
                <tr><td>Voltaje</td><td><input type="text" name="Voltaje"></td></tr> 
                <tr><td>Tamaño</td><td><input type="text" name="Tamanio"></td></tr> 
                <tr><td>descripcionAdicional</td><td><input type="text" name="descripcionAdicional"></td></tr> 
                <tr><td><input type="submit" value="Enviar"></td></tr>  
            </table>
        </form>
    </body>
</html>
