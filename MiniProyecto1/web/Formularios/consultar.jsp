<%-- 
    Document   : consultar
    Created on : 14/03/2015, 06:15:51 PM
    Author     : cristian
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%    
        //conexion
        Connection conex = null;
            Statement estado = null;
            ResultSet result;
            String descripcion;
            String producto;
            String descripcionproducto;
            ResultSet rs;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conex = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproyecto", "root", "");
                estado= (Statement)conex.createStatement();
                out.println("Conexion establecida");
            } catch (Exception e) {
                out.println("Error en la conexion" + e);
            }
        %>
    <%   
        
        
        //valor para cada parte del computador dependiendo el valor ingresado
        double porcentaje=20;
        double mouse = Double.parseDouble(request.getParameter("saldo"))*2/100;
        double teclado = Double.parseDouble(request.getParameter("saldo"))*2/100 ; 
        double pantalla = Double.parseDouble(request.getParameter("saldo"))*10/100;
        double board = Double.parseDouble(request.getParameter("saldo"))*12/100;
        double procesador = Double.parseDouble(request.getParameter("saldo"))*19/100;
        double grafica = Double.parseDouble(request.getParameter("saldo"))*19/100;
        double fuentePoder = Double.parseDouble(request.getParameter("saldo"))*8/100;
        double ram = Double.parseDouble(request.getParameter("saldo"))*9/100;
        double cooler = Double.parseDouble(request.getParameter("saldo"))*3/100;
        double dicoDuro = Double.parseDouble(request.getParameter("saldo"))*6/100; 
        double gabinete = Double.parseDouble(request.getParameter("saldo"))*13/100;
        
        
        out.println("mouse"+mouse+"<br>");
        out.println("teclado"+teclado+"<br>");
        out.println("pantalla"+pantalla+"<br>");
        out.println("board"+board+"<br>");
        out.println("procesador"+procesador+"<br>");
        out.println("grafica"+grafica+"<br>");
        out.println("fuente de poder"+fuentePoder+"<br>");
        out.println("ram"+ram+"<br>");
        out.println("cooler"+cooler+"<br>");
        out.println("disco duro"+dicoDuro+"<br>");
        out.println("gabinete"+gabinete+"<br>");
        
        %> 
        
        <%
        String query;
        query ="select pd.idProducto,pd.nombre,tp.tipoProducto from producto as pd,tipoproducto as tp where pd.idTipoProducto = tp.idTipoProducto order by idProducto";
        rs= estado.executeQuery(query);
        //Select 
        //descripcionProducto.idProducto, descripcionProducto.precio, 
        //producto.nombre,
        //tipoProducto.tipoProducto
        //from descripcionProducto inner join  producto on descripcionProducto.idProducto = producto.idProducto inner join tipoProducto on producto.idTipoProducto = tipoProducto.idTipoProducto where tipoProducto = 'discoDuro'
        while(rs.next()){
        out.println("<table>");
        out.println("<tr>");
        out.println("<th>idProducto</th>");
        out.println("<th>Nombre</th>");
        out.println("<th>idTipoProducto</th>");
        out.println("</tr>");

        out.println("<tr>");
        
         out.println("<td>"+rs.getString("idProducto")+"</td>");
        out.println("<td>"+rs.getString("nombre")+"</td>");
        out.println("<td>"+rs.getString("tipoProducto")+"</td>");
        out.println("</tr>");
        
     
        out.println("</table>");
        out.println("<br><br>");
        }
        conex.close();

        %>
        
    </body>
</html>
