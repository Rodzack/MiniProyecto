/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import clases.Conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


/**
 *
 * @author Darlin
 */
public class producto {
    
    Connection conn;
    Statement estado;
    ResultSet result;
    String query;
    
    public producto(){
        
        conectar();
        
    }
    
    public String conectar(){
        
        String mensaje;
        
        Conexion conecta = new Conexion();
        
        conn = conecta.conectar_db();
        
        try {
            estado = conn.createStatement();
            mensaje = "todo bien, todo bonito";
        } catch (Exception e) {
            mensaje = "todo mal :'<";
        }
        return mensaje;
    }
    
    
    
    
    
    
}
