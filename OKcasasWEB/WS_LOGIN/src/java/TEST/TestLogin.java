/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TEST;

import Operaciones.UsuarioDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author lanxi
 */
public class TestLogin {

    /**
     * @param args the command line arguments
     */
   public static void main(String[] args) {
    
        try {
            System.out.println(new UsuarioDAO().Login("anita", "ana"));
            
            
        } catch (SQLException ex) {
            Logger.getLogger(TestLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
   }
}
    