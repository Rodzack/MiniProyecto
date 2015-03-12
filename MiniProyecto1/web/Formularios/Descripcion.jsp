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
        <title>Descripcion</title>
    </head>
    <body>
        <!--
            Sería bueno crear un diccionario de los campos porque por ejemplo no sé para qué es "tipoDeConexion" y "compatibilidad" que por lo que veo es una foránea de marca
        entonces no entiendo bien qué pasa
        -->
        
          <form action=insertarDescripcion.jsp method="post" >
              
            <table>
                
                <tr>
                    <td>Capacidad</td>
                    <td><input type="text" name="capacidad"></td>
                </tr>  
                <tr>
                    <td>Velocidad </td>
                    <td><input type="text" name="velocidad"></td>
                </tr>  
                <tr>
                    <td>tipoDeConexion</td>
                    <td><input type="text" name="tipoConexion"></td>
                </tr>  
                 <tr>
                     <td>tecnologia</td>
                     <td><input type="text" name="tecnologia"></td>
                 </tr>    
                <tr>
                    <td>Voltaje</td>
                    <td><input type="text" name="voltaje"></td>
                </tr> 
                <tr>
                    <td>Tamaño</td>
                    <td><input type="text" name="tamanio"></td>
                </tr> 
                <tr>
                    <td>descripcionAdicional</td>
                    <td><input type="text" name="descripcionAdicional"></td>
                </tr>
                <tr>
                    <td>compatibilidad</td>
                    <td><input type="text" name="compatibilidad"></td>
                </tr>    
                <tr>
                    <td><input type="submit" value="Enviar"></td>
                </tr>  
                
            </table>
              
        </form>
        
        
        <!--Aca se coloca las tablas para los formularios
        
        
        create table marca (
idMarca int primary key auto_increment,
nombreMarca varchar (20)
);

create table descripcion(
idDescripcion int primary key auto_increment,
capacidad varchar (15),
velocidad varchar (10),
tipoDeConexion varchar (20),
tecnologia varchar (25),
voltaje varchar (25),
tamanio varchar (20),
descripcionAdicional varchar (100)
);
create table tipoProducto(
idTipoProducto int primary key auto_increment,
tipoProducto varchar (30)
);

create table producto (
idProducto int primary key auto_increment,
nombre varchar (20),
idTipoProducto int,
foreign key (idTipoProducto) references tipoProducto (idTipoProducto)
);

create table descripcionProducto(
idProducto int, foreign key (idProducto) references producto (idProducto),
idMarca int, foreign key (idMarca) references marca (idMarca),
idDescripcion int, foreign key (idDescripcion) references descripcion (idDescripcion),
precio double
);
        -->
    </body>
</html>
