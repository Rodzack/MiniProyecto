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
                estado = (Statement) conex.createStatement();
                out.println("Conexion establecida" + "<br>");
            } catch (Exception e) {
                out.println("Error en la conexion" + e);
            }
        %>
        <%
            //valor para cada parte del computador dependiendo el valor ingresado
            double mouse = Double.parseDouble(request.getParameter("saldo")) * 2 / 100;
            double teclado = Double.parseDouble(request.getParameter("saldo")) * 2 / 100;
            double pantalla = Double.parseDouble(request.getParameter("saldo")) * 10 / 100;
            double board = Double.parseDouble(request.getParameter("saldo")) * 12 / 100;
            double procesador = Double.parseDouble(request.getParameter("saldo")) * 19 / 100;
            double grafica = Double.parseDouble(request.getParameter("saldo")) * 19 / 100;
            double fuentePoder = Double.parseDouble(request.getParameter("saldo")) * 8 / 100;
            double ram = Double.parseDouble(request.getParameter("saldo")) * 9 / 100;
            double cooler = Double.parseDouble(request.getParameter("saldo")) * 3 / 100;
            double dicoDuro = Double.parseDouble(request.getParameter("saldo")) * 6 / 100;
            double gabinete = Double.parseDouble(request.getParameter("saldo")) * 13 / 100;

            out.println("Mouse: " + mouse + "<br>");
            out.println("Teclado: " + teclado + "<br>");
            out.println("Pantalla: " + pantalla + "<br>");
            out.println("Board: " + board + "<br>");
            out.println("Procesador: " + procesador + "<br>");
            out.println("Grafica: " + grafica + "<br>");
            out.println("Fuente de poder: " + fuentePoder + "<br>");
            out.println("Ram: " + ram + "<br>");
            out.println("Cooler: " + cooler + "<br>");
            out.println("Disco duro: " + dicoDuro + "<br>");
            out.println("Gabinete: " + gabinete + "<br>");

        %> 

        <%  String query;
            query = "select dp.idProducto,p.nombre, m.nombreMarca,d.capacidad,d.compatibilidad,d.descripcionAdicional,d.tamanio,d.tecnologia,dp.precio,tp.tipoProducto"
                    + " from descripcionproducto dp"
                    + " join descripcion d on dp.idDescripcion=d.idDescripcion"
                    + " join marca m on dp.idMarca=m.idMarca"
                    + " join producto p on dp.idProducto=p.idProducto"
                    + " join tipoproducto tp on p.idTipoproducto = tp.IdTipoProducto where dp.precio <='"+teclado+"' and tp.tipoProducto = 'teclado'";
            rs = estado.executeQuery(query);

            out.println("<table border=1>");
            out.println("<tr>");
            out.println("<th><label>idProducto</label></th>");
            out.println("<th><label>Nombre</label></th>");
            out.println("<th><label>idTipoProducto</label></th>");
            out.println("<th><label>Precio</label></th>");
            out.println("</tr>");
            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getString("dp.idProducto") + "</td>");
                out.println("<td>" + rs.getString("p.nombre") + "</td>");
                out.println("<td>" + rs.getString("tp.tipoProducto") + "</td>");
                out.println("<td>" + rs.getString("dp.precio") + "</td>");
                out.println("</tr>");
            }
            out.println("</table>");
            out.println("<br><br>");

            conex.close();

        %>

    </body>
</html>
