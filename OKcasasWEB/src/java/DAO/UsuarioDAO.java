/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Clases.Usuario;
import Conexion.Conexion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author Claudio
 */
public class UsuarioDAO {
    
    
    private Connection conexion;

    public UsuarioDAO() {
    }
    
    //Método agregar
    
    
    public boolean agregarUsuario(Usuario user) throws SQLException {
        //Ward para saber si se guardó o no
        boolean centinela = false;
        
        try {
            //Abrir conexion
            this.conexion=new Conexion().obtenerconexion();
            
            String llamada = "{ call SP_AGREGAR_USUARIO(?,?,?,?,?,?,?,?,?,?,?,?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            //Pasar los parámetros del usuario al procedure
            cstmt.setInt(1, user.getRut());
            cstmt.setString(2, user.getNombre());
            cstmt.setString(3, user.getApellido());
            cstmt.setString(4, user.getCorreo());
            cstmt.setInt(5, user.getCelular());
            cstmt.setString(6, user.getFecha_nacimiento());
            cstmt.setString(7, user.getDireccion());
            cstmt.setInt(8, user.getTelefono());
            cstmt.setString(9, String.valueOf(user.getSexo()));
            cstmt.setString(10, user.getCiudad());
            cstmt.setString(11, user.getUsuario());
            cstmt.setString(12, user.getContrasena());
            
            if(cstmt.executeUpdate()>0){
                centinela=true;
            }
            
        } catch (Exception e) {
            System.out.println("ERROR AL AGREGAR "+e.getMessage());
        } finally {
            //Cerrar conexion
            this.conexion.close();
        }
        
        
        return centinela;
    }
    
    
    //Método Listar
    
    //Método Eliminar
    
    
}
