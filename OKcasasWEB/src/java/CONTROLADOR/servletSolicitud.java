package CONTROLADOR;

import Clases.SolicitudInspeccion;
import DAO.SolicitudDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import ws.WSPago;
import ws.WSPago_Service;
import ws.WSCredito;
import ws.WSCredito_Service;

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

        try {
            //SESION
            HttpSession sesion = request.getSession(true);
            //REALIZAMOS LA INTEGRACION :)
            WSPago_Service servicio = new WSPago_Service();
            WSPago Pago = servicio.getWSPagoPort();
            WSCredito_Service servicio2 = new WSCredito_Service();
            WSCredito credito = servicio2.getWSCreditoPort();
            //Capturar Variables
            int Rut = Integer.parseInt(request.getParameter("txtRut"));
            String Direccion = request.getParameter("txtDireccion");

            String fechahora = request.getParameter("txtFechahora");

            String email = request.getParameter("txtEmail");
            int celular = Integer.parseInt(request.getParameter("txtCelular"));

            int monto = Integer.parseInt(request.getParameter("txtMonto"));
            
            Boolean hipotecario = credito.credito(Rut);
            if (hipotecario == true) {
                //14094 de descuento
                monto = monto+14094;
                request.setAttribute("msjd", "Por ser cliente del banco, se te ha aplicado un descuento del 15%");
            } 

            String TipoServicio = "Todos los Servicios";
            int total = Pago.obtenerPrecio(monto);

            //Solicitud y dao
            SolicitudInspeccion Solicitud = new SolicitudInspeccion(Direccion, TipoServicio, fechahora, celular, email, Rut, monto);
            SolicitudDAO dao = new SolicitudDAO();

            int codigo = dao.obtenerCodigo();
            sesion.setAttribute("codigo", codigo);

            

            if (total >= 0) {

                //GUARDAR SOLICITUD
                if (dao.SolicitudInspeccion(Solicitud) == true) {
                    request.setAttribute("msj", "Solicitud Enviada!");
                    request.getRequestDispatcher("SolicitudInspeccion.jsp").forward(request, response);
                } else {
                    request.setAttribute("err", "Error al enviar la solicitud");
                    request.getRequestDispatcher("SolicitudInspeccion.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("errp", "Monto insuficiente");
                request.getRequestDispatcher("SolicitudInspeccion.jsp").forward(request, response);
            }

        } catch (SQLException ex) {
            request.setAttribute("msj", "Error al enviar la solicitud a la Base de datos" + ex.getMessage());
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
