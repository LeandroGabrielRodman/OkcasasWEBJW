/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ws;

import DAO.ClienteHipotecarioDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

import Clases.Seguimiento;

/**
 *
 * @author jeanl
 */
@WebService(serviceName = "WS_Credito")
public class WS_Credito {

    ClienteHipotecarioDAO DAO = new ClienteHipotecarioDAO();

    /**
     * Web service operation
     */
    @WebMethod(operationName = "Credito")
    public Boolean Credito(@WebParam(name = "rut") int rut) {
        //TODO write your implementation code here:
        boolean respuesta = false;

        try {
            if (DAO.Credito(rut) == '1') {
                respuesta = true;
            }
            if (DAO.Credito(rut) == '0') {
                respuesta = false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(WS_Credito.class.getName()).log(Level.SEVERE, null, ex);
        }
        return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "Disponibilidad")
    public int Disponibilidad(@WebParam(name = "rut") int rut) {
        //TODO write your implementation code here:
        int respuesta = 3;
        try {
            if (DAO.DisponibilidadTecnicos(rut) > 0) {
                respuesta = 1;
            }
            if (DAO.DisponibilidadTecnicos(rut) <= 0) {
                respuesta = 0;
            }
        } catch (SQLException ex) {
            Logger.getLogger(WS_Credito.class.getName()).log(Level.SEVERE, null, ex);
        }

        return respuesta;
    }

    /**
     * Web service operation
     */
    //no usar este pq trae la clase entera y eso es feo
    @WebMethod(operationName = "SeguimientoWS")
    public Seguimiento SeguimientoWS(@WebParam(name = "codigo") int codigo) {
        //TODO write your implementation code here:
        Seguimiento se = new Seguimiento();
        try {
            se = DAO.SeguimientoWS(codigo);
        } catch (SQLException ex) {
            Logger.getLogger(WS_Credito.class.getName()).log(Level.SEVERE, null, ex);
        }

        return se;
    }

    /**
     * Web service operation
     */
    //usar este porque está mas pulento y más uwu porque lo hizo jean pipa
    @WebMethod(operationName = "SeguimientoClienteWS")
    public int SeguimientoClienteWS(@WebParam(name = "codigo") int codigo) {
        int respuesta = 6;

        try {
            respuesta = DAO.SeguimientoCliente(codigo);
        } catch (SQLException ex) {
            Logger.getLogger(WS_Credito.class.getName()).log(Level.SEVERE, null, ex);
        }

        return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "TecnicosDisponiblesWeb")
    public int TecnicosDisponiblesWeb() {
        //TODO write your implementation code here:
        int tecnicos =0;
        try {
            tecnicos = DAO.ContTecnicosDisponibles();
        } catch (Exception e) {
        }
        return tecnicos;
    }

}
