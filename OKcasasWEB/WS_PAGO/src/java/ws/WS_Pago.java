/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ws;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import DAO.PagoDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Claudio
 */
@WebService(serviceName = "WS_Pago")
public class WS_Pago {
   PagoDAO pago = new PagoDAO();
    /**
     * Web service operation
     * @param monto
     * @return
    
     */
    @WebMethod(operationName = "obtenerPrecio")
    public int obtenerPrecio(@WebParam(name = "monto") int monto) {

     

        int total = -1;
        try {
            total = pago.obtenerPrecio();
            //total = 93960
            //monto = saldo cliente
            if (monto >= total) {
                int montofinal = monto - total;
                return montofinal;
            } else {
               
            }
        } catch (SQLException ex) {
            Logger.getLogger(WS_Pago.class.getName()).log(Level.SEVERE, null, ex);
        }
           return -1;
    }

}
