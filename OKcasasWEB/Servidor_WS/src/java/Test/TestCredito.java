/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import Clases.Seguimiento;
import DAO.ClienteHipotecarioDAO;
import java.sql.SQLException;

/**
 *
 * @author jeanl
 */
public class TestCredito {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException {
        // TODO code application logic here
        //System.out.println(new ClienteHipotecarioDAO().Credito(12322132));
        //System.out.println(new ClienteHipotecarioDAO().DisponibilidadTecnicos(587939822));
        //System.out.println(new ClienteHipotecarioDAO().SeguimientoWS(3));

//        Seguimiento seg = new ClienteHipotecarioDAO().SeguimientoWS(55);
//        System.out.println(seg.getCodigo_inspeccion());
//        System.out.println(seg.getRut_tecnico());
//        System.out.println(seg.getFecha());
//        System.out.println(seg.getFase1());
//        System.out.println(seg.getFase2());
//        System.out.println(seg.getFase3());
//        System.out.println(seg.getFase4());
//        System.out.println(seg.getFase5());
        //System.out.println(new ClienteHipotecarioDAO().Listar());
        //System.out.println(new ClienteHipotecarioDAO().SeguimientoCliente(100));
        ClienteHipotecarioDAO dao = new ClienteHipotecarioDAO();
        
        System.out.println(dao.ContTecnicosDisponibles());
        
        
    }

}
