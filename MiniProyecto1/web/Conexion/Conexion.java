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

/**
 *
 * @author Aprendiz
 */
public class Conexion {
public void Funcionn()
   {
      try
      {
         Class.forName("com.mysql.jdbc.Driver");
         Connection conex = DriverManager.getConnection(
        "jdbc:mysql://localhost:83/PruebaBD", "root", "");
         Statement st = conex.createStatement();

      }
      catch (Exception e)
      {
         e.printStackTrace();
      }
        
}
}
