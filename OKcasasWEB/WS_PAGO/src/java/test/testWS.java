/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import ws.WS_Pago;
import DAO.PagoDAO;

/**
 *
 * @author Claudio
 */
public class testWS {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        PagoDAO dao = new PagoDAO();
        WS_Pago ws = new WS_Pago();
        int saldo = 20000;
        
        try {
            
            if(ws.obtenerPrecio(saldo)>=0){
                System.out.println("Pago realizado");
            } else {
                System.out.println("Monto insuficiente");
            }
            
        } catch (Exception e) {
            System.out.println("Error al pagar "+e.getMessage());
        }
        
    }
    
}
