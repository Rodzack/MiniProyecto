/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author aprendiz
 */
public class Modelo {

    Connection conn;
    Statement estado;
    ResultSet result;
    String query;

      public Modelo(){
        
        Conexion conectar = new Conexion();
        conn = conectar.conectar_db();
        
        try {
            estado = conn.createStatement();
        } catch (Exception e) {
          
        }
        
    }
      
      
      public void insertar (String capacidad, String velocidad, String tipoConexion,String tecnologia,String voltaje,String tamanio, String descripcionAdi, String compatibilidad){
      
      query="insert into descripcion (capacidad,velocidad,tipoConexion,tecnologia,voltaje,tamanio,descripcionAdicional,compatibilidad) "
              + "values ()";
      
      
      }
      
      

}
