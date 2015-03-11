/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Aprendiz
 */
public class Conexion {
    
    Connection conn;
    
    public Connection conectar_db(){
        
        String server = "jdbc:mysql://localhost/miniproyecto";
        String user = "root";
        String pass = "";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(server, user, pass);
          
        } catch (Exception e) {
            
        }
        return conn;
        
    }
    
}

