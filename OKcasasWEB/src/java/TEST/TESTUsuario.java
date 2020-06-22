/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TEST;

import Clases.Usuario;
import DAO.UsuarioDAO;

/**
 *
 * @author Claudio
 */
public class TESTUsuario {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        UsuarioDAO dao = new UsuarioDAO();
        
        try {
            //Agregar
            
            Usuario u = new Usuario(20469887, "Claudiodos", "Gonzalezdos", "claudiodos@gmail.com", 79820112, "14/04/01", "coquimbo 2864, comuna Puente Alto", 3191468, 'M', "Santiago", "claudiodos", "claudiodos");
            
            if(dao.agregarUsuario(u)){
                System.out.println("USUARIO GUARDADO");
            } else {
                System.out.println("USUARIO NO GUARDADO");
            }
            
        } catch (Exception e) {
        }
        
    }
    
}
