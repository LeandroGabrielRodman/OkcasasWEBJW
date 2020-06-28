/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Clases.SolicitudInspeccion;
import Conexion.Conexion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Leandro
 */
public class SolicitudDAO {

    private Connection conexion;

    //Agregar SOLICITUD
    public boolean SolicitudInspeccion(SolicitudInspeccion Solicitud) throws SQLException {
        boolean centinela = false;

        try {
            this.conexion = new Conexion().obtenerconexion();
            String llamada = "{ call SP_SOLICITUD(?,?,?,?,?,?,?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);

            cstmt.setString(1, Solicitud.getDireccion());
            cstmt.setString(2, Solicitud.getTipo_servicio());
            cstmt.setString(3, Solicitud.getFecha_hora());
            cstmt.setInt(4, Solicitud.getCelular());
            cstmt.setString(5, Solicitud.getCorreo());
            cstmt.setInt(6, Solicitud.getCliente_rut());
            cstmt.setInt(7,Solicitud.getMonto());
            
            

            if (cstmt.executeUpdate() > 0) {
                centinela = true;
            }
        } catch (Exception e) {
            System.out.println("Error al enviar solicitud " + e.getMessage());
        } finally {
            this.conexion.close();
        }

        return centinela;
    }
    
    //

    public int obtenerCodigo() throws SQLException {
        int codigo =0;
        
        try {
            this.conexion = new Conexion().obtenerconexion();
            String llamada = "SELECT MAX(CODIGO_INSPECCION) FROM AGENDA_INSPECCION";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            ResultSet rs = cstmt.executeQuery();
            
            while(rs.next()){
                codigo = rs.getInt("MAX(CODIGO_INSPECCION)");
            }
            
        } catch (Exception e) {
            System.out.println("Error al obtener el precio" +e.getMessage());
        } finally {
            conexion.close();
        }
        
        return codigo;
        
    }
    
}
