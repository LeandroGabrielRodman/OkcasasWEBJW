package CONTROLADOR;

import Clases.SolicitudInspeccion;
import DAO.SolicitudDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ws.WSPago;
import ws.WSPago_Service;

/**
 *
 * @author lanxi
 */
@WebServlet(name = "servletSolicitud", urlPatterns = {"/servletSolicitud"})
public class servletSolicitud extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet servletSolicitud</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servletSolicitud at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          //SESION
        

        //REALIZAMOS LA INTEGRACION :)
        WSPago_Service servicio = new WSPago_Service();
        WSPago Pago = servicio.getWSPagoPort();
        //Capturar Variables 
        String Direccion = request.getParameter("txtDireccion");
        String TipoServicio = request.getParameter("txtServicio");
        String fechahora = request.getParameter("txtfechahora");
        int celular = Integer.parseInt(request.getParameter("txtCelular"));
        String email = request.getParameter("txtemail");
        int Rut = Integer.parseInt(request.getParameter("txtRut"));
        int monto = Integer.parseInt(request.getParameter("txtmonto"));


        //Solicitud y dao
        SolicitudInspeccion SO = new SolicitudInspeccion(Direccion, TipoServicio, fechahora, celular, email, Rut, monto);
        SolicitudDAO dao = new SolicitudDAO();

        try {

            if (Pago.obtenerPrecio(monto)>=0) {
                
                //GUARDAR SOLICITUD
                if (dao.SolicitudInspeccion(SO)) {
                    request.setAttribute("msj", "Solicitud Enviada!");
                    request.getRequestDispatcher("SolicitudInspeccion.jsp").forward(request, response);
                } 
                else 
                {
                    request.setAttribute("err", "Error al enviar la solicitud");
                    request.getRequestDispatcher("SolicitudInspeccion.jsp").forward(request, response);
                }
            } else {
                    request.setAttribute("errp", "Monto insuficiente");
                    request.getRequestDispatcher("SolicitudInspeccion.jsp").forward(request, response);
            }

        } catch (SQLException ex) {
            request.setAttribute("msj", "Error al enviar la solicitud" + ex.getMessage());
            request.getRequestDispatcher("SolicitudInspeccion.jsp").forward(request, response);
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
