<%-- 
    Document   : insertarDescripcion
    Created on : 11/03/2015, 11/03/2015 09:31:33 AM
    Author     : aprendiz
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
        
        <!-- NO ENTIENDO POR QUÉ ESTE ARCHIVO (insertarDescripcion) es JSP y el otro insertar (insertarDescripcion) es JAVA
            SE SUPONE QUE PARA HACER ESO ES CON LOS BEANS O SEA LOS .JAVA y por eso es que este no debería funcionar bien
        -->
        
       <%
    Connection conex;
    Statement estado=null;
    ResultSet result;
    String query;

        
        try {
        Class.forName("com.mysql.jdbc.Driver");
        conex= (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproyecto","root","");
            estado= conex.createStatement();
                out.println("Conexion establecida");
        }catch(Exception e){
            out.println("Error en la conexion"+ e);
        }
            

//Insertar 

      try {
          query="insert into descripcion (capacidad,velocidad,tipoConexion,tecnologia,voltaje,tamanio,descripcionAdicional,) "
      + "values ('"+request.getParameter("capacidad") +"','"+request.getParameter("velocidad")+"','"+request.getParameter("tipoConexion")+"',"
              + "'"+request.getParameter("tecnologia")+"','"+request.getParameter("voltaje")+"','"+request.getParameter("tamanio")+"',"
              + "'"+request.getParameter("descripcionAdicional")+"')";
                estado.executeUpdate(query);
                out.println("insertado");
            } catch (Exception e) {
                out.println("Hubo un  error al insertar");
            }
        

       %>
           <h1>hola </h1>
    </body>
</html>
