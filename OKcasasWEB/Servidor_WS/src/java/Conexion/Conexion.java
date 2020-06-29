/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
/**
 *
 * @author jeanl
 */
public class Conexion {
    
    private static Connection conexion;
    
    private String user = "ADMINJW";
    private String pass = "ADMINJW";
    
    private String url = "jdbc:oracle:thin:"+user+"/"+pass+"@localhost:1521:XE";

    public Conexion() {
        try {
            Class.forName("oracle.jdbc.OracleDriver").newInstance();
            this.conexion = DriverManager.getConnection(url,user,pass);
        } catch (Exception e) {
            System.out.println("Error de conexion "+e.getMessage());
        }
    }
    
    public Connection obtenerConexion(){
        return conexion;
    }
}
    
