/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TEST;
import Clases.SolicitudInspeccion;
import DAO.SolicitudDAO;

/**
 *
 * @author lanxi
 */
public class TestSolicitud {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        SolicitudDAO dao = new SolicitudDAO();
        
        try {
            //AGREGAR SOLICITUD
            
           SolicitudInspeccion SO = new SolicitudInspeccion("los uwu uwu", "Todos los servicios", "14/04/2000", 12345678, "uwu@uwu.com", 20469886, 100000);
            if(dao.SolicitudInspeccion(SO)==true)
            {
                System.out.println("SOLICITUD GUARDADA ");
            }
            else
            {
                System.out.println("Solicitud No guardada ");
            }
            
        } catch (Exception e) {
        }
        
        
        
        
        
    }
    
}
