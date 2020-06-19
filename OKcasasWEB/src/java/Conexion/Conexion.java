/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author lanxi
 */
public class Conexion {

    private static Connection conexion;

    private String usuario = "ADMIN";
    private String pass = "Admin1";
    private String url = "jdbc:oracle:thin:" + usuario + "/" + pass + "@localhost:1521:xe";

    public Conexion() {
        try {
            //cargamos la libreria jdbc para oracle 
            Class.forName("oracle.jdbc.OracleDriver").newInstance();
            this.conexion = DriverManager.getConnection(url, usuario, pass);
            
        } catch (Exception e) {
            System.out.println("Error de conexion" + e.getMessage());
        }
    }

    public Connection obtenerconexion() {
        return conexion;
    }
}
