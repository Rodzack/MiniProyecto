<%-- 
    Document   : consultar
    Created on : 14/03/2015, 06:15:51 PM
    Author     : cristian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%    
        //valor para cada parte del computador dependiendo el valor ingresado
        double porcentaje=20;
        double mouse = Double.parseDouble(request.getParameter("saldo"))*porcentaje/100;
        double teclado = Double.parseDouble(request.getParameter("saldo"))*porcentaje/100 ; 
        double pantalla = Double.parseDouble(request.getParameter("saldo"))*porcentaje/100;
        double board = Double.parseDouble(request.getParameter("saldo"))*porcentaje/100;
        double procesador = Double.parseDouble(request.getParameter("saldo"))*porcentaje/100;
        double grafica = Double.parseDouble(request.getParameter("saldo"))*porcentaje/100;
        double fuentePoder = Double.parseDouble(request.getParameter("saldo"))*porcentaje/100;
        double ram = Double.parseDouble(request.getParameter("saldo"))*porcentaje/100;
        double cooler = Double.parseDouble(request.getParameter("saldo"))*porcentaje/100;
        double dicoDuro = Double.parseDouble(request.getParameter("saldo"))*porcentaje/100; 
        double gabinete = Double.parseDouble(request.getParameter("saldo"))*porcentaje/100;
        
        
        out.println(mouse);
        %> 
        
        
    </body>
</html>
