/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Clases.Inspeccion;
import Clases.Usuario;
import Conexion.Conexion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import oracle.jdbc.OracleTypes;
import oracle.jdbc.oracore.OracleType;

/**
 *
 * @author Claudio
 */
public class InspeccionDAO {

    private Connection conexion;

    public InspeccionDAO() {
    }

    //Listar por rut
    public List<Inspeccion> listarInspecciones(int rut) throws SQLException {
        List<Inspeccion> listado = new ArrayList<>();

        try {
            this.conexion = new Conexion().obtenerconexion();
            String llamada = "{ call SP_LISTAR_INSPECCIONES(?, ?) }";
            CallableStatement cstmt = conexion.prepareCall(llamada);

            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.setInt(2, rut);
            cstmt.execute();

            ResultSet rs = (ResultSet) cstmt.getObject(1);

            while (rs.next()) {
                Inspeccion ins = new Inspeccion();
                ins.setDireccion(rs.getString("direccion"));
                ins.setTipo_servicio(rs.getString("tipo_servicio"));
                ins.setFecha(rs.getDate("fecha_hora"));
                ins.setCelular(rs.getInt("celular"));
                ins.setCorreo(rs.getString("correo"));
                ins.setRut(rs.getInt("cliente_rut"));
                ins.setEtapa((char) rs.getInt("etapa"));
                ins.setCodigo_inspeccion(rs.getInt("codigo_inspeccion"));
                ins.setMonto(rs.getInt("monto"));

                listado.add(ins);

            }

        } catch (Exception e) {
            System.out.println("ERROR AL LISTAR " + e.getMessage());
        } finally {
            this.conexion.close();
        }

        return listado;
    }

    //Listar por rut
    public List<Inspeccion> listarInspeccionesCodigo(int codigo) throws SQLException {
        List<Inspeccion> listado = new ArrayList<>();

        try {
            this.conexion = new Conexion().obtenerconexion();
            String llamada = "{ call SP_LISTAR_INSPECCIONES_CODIGO(?, ?) }";
            CallableStatement cstmt = conexion.prepareCall(llamada);

            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.setInt(2, codigo);
            cstmt.execute();

            ResultSet rs = (ResultSet) cstmt.getObject(1);

            while (rs.next()) {
                Inspeccion ins = new Inspeccion();
                ins.setDireccion(rs.getString("direccion"));
                ins.setTipo_servicio(rs.getString("tipo_servicio"));
                ins.setFecha(rs.getDate("fecha_hora"));
                ins.setCelular(rs.getInt("celular"));
                ins.setCorreo(rs.getString("correo"));
                ins.setRut(rs.getInt("cliente_rut"));
                ins.setEtapa((char) rs.getInt("etapa"));
                ins.setCodigo_inspeccion(rs.getInt("codigo_inspeccion"));
                ins.setMonto(rs.getInt("monto"));

                listado.add(ins);

            }

        } catch (Exception e) {
            System.out.println("ERROR AL LISTAR " + e.getMessage());
        } finally {
            this.conexion.close();
        }

        return listado;
    }

}
