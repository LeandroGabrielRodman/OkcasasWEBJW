/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Clases.Seguimiento;
import Conexion.Conexion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jeanl
 */
public class ClienteHipotecarioDAO {

    private Connection conexion;

    public ClienteHipotecarioDAO() {
    }

    public char Credito(int vrut) throws SQLException {
        char hipo = '3';

        try {
            this.conexion = new Conexion().obtenerConexion();

            String texto = String.valueOf(vrut);

            String script = "select hipotecario from LISTA_CLIENTES_BANCO where rut ='" + texto + "' ";

            CallableStatement cstmt = this.conexion.prepareCall(script);
            ResultSet rs = cstmt.executeQuery();

            while (rs.next()) {
                int var = rs.getInt("hipotecario");
                hipo = Integer.toString(var).charAt(0);
            }

        } catch (Exception e) {
            System.out.println("Error en traer hipotecario" + e.getMessage());
        } finally {
            this.conexion.close();
        }
        return hipo;
    }

    public int DisponibilidadTecnicos(int vrut) throws SQLException {
        int total = 0;
        int in1 = 0;
        int in2 = 0;
        int in3 = 0;
        int in4 = 0;
        int in5 = 0;

        try {
            this.conexion = new Conexion().obtenerConexion();

            String texto = String.valueOf(vrut);

            String script = "select * from INSUMOS_EN_USO where rut_tec ='" + texto + "'";

            CallableStatement cstmt = this.conexion.prepareCall(script);
            ResultSet rs = cstmt.executeQuery();

            while (rs.next()) {
                in1 = rs.getInt("CAMION_DE_TRANSPORTE");
                in2 = rs.getInt("TALADRO");
                in3 = rs.getInt("LUXOMETRO");
                in4 = rs.getInt("ESCALERAS");
                in5 = rs.getInt("TERMOGRAFO");

                total = in1 + in2 + in3 + in4 + in5;
            }

        } catch (Exception e) {
            System.out.println("Error en traer Tecnico" + e.getMessage());
        } finally {
            this.conexion.close();
        }
        return total;
    }

    public int ContTecnicosDisponibles() throws SQLException {
        int tecnicos =0;
        try {

            //conexion
            this.conexion = new Conexion().obtenerConexion();
            String consulta = "SELECT * FROM INSPECTOR";
            CallableStatement cstmt2 = this.conexion.prepareCall(consulta);
            ResultSet rs2 = cstmt2.executeQuery();

            //cuando haya un dato siguiente
            while (rs2.next()) {
                //se guarda el rut en la variable rut
                String rut = rs2.getString("RUT");
                //se pasa el rut al método que comprueba si está ocupado o no
                int disponible = this.DisponibilidadTecnicos(Integer.parseInt(rut));
                //si está ocupado trae 1 o más, si está libre trae 0
                //entonces si es igual a 0 (libre) se suma un técnico
                if(disponible==0){
                    tecnicos++;
                }
            }

        } catch (Exception e) {
            System.out.println("Error en contar tecnicos" + e.getMessage());
        } finally {
            this.conexion.close();
        }
        return tecnicos;
    }

    public Seguimiento SeguimientoWS(int vcod) throws SQLException {

        Seguimiento se = new Seguimiento();

        try {
            this.conexion = new Conexion().obtenerConexion();

            String texto = String.valueOf(vcod);

            String script = "select * from SEGUIMIENTO where CODIGO_INSPECCION ='" + texto + "' ";

            CallableStatement cstmt = this.conexion.prepareCall(script);
            ResultSet rs = cstmt.executeQuery();

            while (rs.next()) {

                int co = rs.getInt("codigo_inspeccion");
                se.setCodigo_inspeccion(co);

                int ru = rs.getInt("rut_tecnico");
                se.setRut_tecnico(ru);

                String date = rs.getString("fecha");
                se.setFecha(date);

                int et1 = rs.getInt("fase1");
                //char e1 = Integer.toString(et1).charAt(0); 
                se.setFase1(et1);

                int et2 = rs.getInt("fase2");
                //char e2 = Integer.toString(et2).charAt(0); 
                se.setFase2(et2);

                int et3 = rs.getInt("fase3");
                //char e3 = Integer.toString(et3).charAt(0); 
                se.setFase3(et3);

                int et4 = rs.getInt("fase4");
                //char e4 = Integer.toString(et4).charAt(0); 
                se.setFase4(et4);

                int et5 = rs.getInt("fase5");
                //char e5 = Integer.toString(et5).charAt(0); 
                se.setFase5(et5);

            }

        } catch (Exception e) {
            System.out.println("Error en traer hipotecario" + e.getMessage());
        } finally {
            this.conexion.close();
        }
        return se;
    }

    public ArrayList<Seguimiento> Listar() throws SQLException {

        ArrayList<Seguimiento> listado = new ArrayList<>();

        try {
            this.conexion = new Conexion().obtenerConexion();

            String script = "SELECT * FROM SEGUIMIENTO ORDER BY CODIGO_INSPECCION DESC";

            PreparedStatement ps = conexion.prepareStatement(script);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Seguimiento se = new Seguimiento();

                se.setCodigo_inspeccion(rs.getInt(1));
                se.setRut_tecnico(rs.getInt(2));
                se.setFecha(rs.getString(3));
                se.setFase1(rs.getInt(4));
                se.setFase2(rs.getInt(5));
                se.setFase3(rs.getInt(6));
                se.setFase4(rs.getInt(7));
                se.setFase5(rs.getInt(8));

                listado.add(se);

            }

        } catch (Exception e) {
            System.out.println("Error en traer hipotecario" + e.getMessage());
        } finally {
            this.conexion.close();
        }

        return listado;
    }

    public int SeguimientoCliente(int vcod) throws SQLException {
        int num = 0;

        try {
            this.conexion = new Conexion().obtenerConexion();

            String texto = String.valueOf(vcod);

            String script = "select * from agenda_inspeccion where CODIGO_INSPECCION ='" + texto + "' ";

            CallableStatement cstmt = this.conexion.prepareCall(script);
            ResultSet rs = cstmt.executeQuery();

            while (rs.next()) {
                num = rs.getInt("etapa");
            }

        } catch (Exception e) {
            System.out.println("Error en traer hipotecario" + e.getMessage());
        } finally {
            this.conexion.close();
        }
        return num;
    }

}
