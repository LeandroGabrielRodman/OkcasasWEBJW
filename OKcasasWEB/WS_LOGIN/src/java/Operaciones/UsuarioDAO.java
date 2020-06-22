/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Operaciones;

import Conexion.Conexion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author lanxi
 */
public class UsuarioDAO {

    private Connection conexion;

    public UsuarioDAO() {
    }

    
    //LOGIN
    
    public char Login(String user, String pass) throws SQLException {
        //Si nos retorna N significa que no puede iniciar sesion
        char tipo = 'N';

        try {
            this.conexion = new Conexion().obtenerconexion();
            String script = "SELECT TIPO_USUARIO FROM USUARIOS_OKCASAS WHERE USUARIO = '" + user + "' AND CONTRASENA='" + pass + "'";
            CallableStatement cstmt = this.conexion.prepareCall(script);
            ResultSet rs = cstmt.executeQuery();
            //
            while (rs.next()) {
                tipo = rs.getString("TIPO_USUARIO").charAt(0);

            }
        } catch (Exception e) {
            System.out.println(" Error en LOGIN" + e.getMessage());
        } 
            //cerrar la conexion
        finally {
            this.conexion.close();
        }

        return tipo;
    }
}
