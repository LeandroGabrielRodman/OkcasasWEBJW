/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLADOR;

import Clases.Inspeccion;
import DAO.InspeccionDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import ws.WSCredito;
import ws.WSCredito_Service;

/**
 *
 * @author Claudio
 */
@WebServlet(name = "servletSeguimiento", urlPatterns = {"/servletSeguimiento"})
public class servletSeguimiento extends HttpServlet {

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
            out.println("<title>Servlet servletSeguimiento</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servletSeguimiento at " + request.getContextPath() + "</h1>");
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
            HttpSession sesion = request.getSession(false);

            WSCredito_Service servicio = new WSCredito_Service();
            WSCredito seguimiento = servicio.getWSCreditoPort();

            int codigo = Integer.parseInt(request.getParameter("txtCodigo"));
            
            int etapa = seguimiento.seguimientoClienteWS(codigo);
            sesion.setAttribute("etapa", etapa);

            List<Inspeccion> listado = new InspeccionDAO().listarInspeccionesCodigo(codigo);
            request.setAttribute("listado", listado);
            request.getRequestDispatcher("SeguimientoInspeccion.jsp").forward(request, response);

        } catch (Exception e) {
            request.getRequestDispatcher("SeguimientoInspeccion.jsp").forward(request, response);
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
