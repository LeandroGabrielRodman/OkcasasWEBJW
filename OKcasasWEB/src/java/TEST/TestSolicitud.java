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
            
           SolicitudInspeccion SO = new SolicitudInspeccion("LLALAL", "asdas", "21/12/23 1:30", 123995677, "sadasdas", 21441520,12324532);
            if(dao.SolicitudInspeccion(SO))
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
