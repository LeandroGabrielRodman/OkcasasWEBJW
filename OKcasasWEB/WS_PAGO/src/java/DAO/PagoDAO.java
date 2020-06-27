/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Conexion.Conexion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;



/**
 *
 * @author Claudio
 */
public class PagoDAO {
    
    private Connection conexion;

    public PagoDAO() {
    }
    
    public int obtenerPrecio() throws SQLException {
        int precio =-1;
        
        try {
            this.conexion = new Conexion().obtenerconexion();
            String llamada = "SELECT SUM(PRECIO_SERVICIO) FROM PRECIOS_SERVICIOS";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            ResultSet rs = cstmt.executeQuery();
            
            while(rs.next()){
                precio = rs.getInt("SUM(PRECIO_SERVICIO)");
            }
            
        } catch (Exception e) {
            System.out.println("Error al obtener el precio" +e.getMessage());
        } finally {
            conexion.close();
        }
        
        return precio;
        
    }
    
}
