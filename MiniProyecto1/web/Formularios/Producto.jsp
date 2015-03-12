<%-- 
    Document   : Producto
    Created on : 10/03/2015, 11:22:04 PM
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
        <form action=".jsp" method="post" name="Producto">
            <table>
                <tr><td>Nombre producto</td><td><input type="text" name="nombreProducto"></td></tr> 
                
                
                <!-- acá hay que tener la consulta para poder traer el nombre del tipo de producto -->
                <tr><td>idTipoProducto</td><td><input type="text" name="idTipoProducto "></td></tr>  
                <tr><td><input type="submit" value="Enviar"></td></tr>  
            </table>
        </form>
        
        <%/*
          
Connection conn = null;
PreparedStatement ps = null;
ResultSet rs = null;
String SQL = null;
String Insertar= null;

 
try{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection("jdbc:mysql://localhost/PruebaBD","root","");
 
	conn.setAutoCommit(false);
 
        //Insertar= "Insert into Usuarios (Nombre,Correo,Contrasenna) values ("+request.getParameter("Name")+","+request.getParameter("Password")+","+request.getParameter("Mail")+")";
        
        Insertar="INSERT INTO Usuarios (Nombre, Correo, Contrasenna) VALUES ('"+request.getParameter("Name")+"','"+request.getParameter("Mail")+"','"+request.getParameter("Password")+"')";
	ps = conn.prepareStatement(SQL, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ps.executeUpdate(Insertar);
	rs = ps.executeQuery();
	conn.commit();
        
	while(rs.next()) {
		out.println("<tr><td>" + rs.getString("nombre") + "</td>");
                out.println("<td>" + rs.getString("id") + "</td>");
                out.println("<td>" + rs.getString("correo") + "</td>");
                out.println("<td>" + rs.getString("contrasenna") + "</td></tr>");
                
	} // end while
	out.println("</table>");
} catch (SQLException exQL) {
	conn.rollback();
	out.println("Error SQL: " + exQL.getMessage());	
} catch (Exception ex) {
	conn.rollback();
	out.println("Error: " + ex.getMessage());
} finally {
	if (rs != null) rs.close();
	if (ps != null) ps.close();
	if (conn != null) conn.close();
} // end try
  
    
        */%>
    </body>
</html>
