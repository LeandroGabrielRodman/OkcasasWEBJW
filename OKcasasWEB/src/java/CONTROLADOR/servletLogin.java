/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLADOR;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import ws.WSLOGIN;
import ws.WSLOGIN_Service;
import ws.WSCredito;
import ws.WSCredito_Service;



/**
 *
 * @author lanxi
 */
@WebServlet(name = "servletLogin", urlPatterns = {"/servletLogin"})
public class servletLogin extends HttpServlet {

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
            out.println("<title>Servlet servletLogin</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servletLogin at " + request.getContextPath() + "</h1>");
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
        HttpSession  sesion = request.getSession();
        //DESTRUIR SESIONES (CERRARLAS)
        sesion.invalidate();
        response.sendRedirect("Inicio.jsp");
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
         HttpSession sesion = request.getSession(true);
           
        //capturamos las credenciales 
        String user = request.getParameter("txtUsuario");
        String pass = request.getParameter("txtContrasena");
        //creamos el cliente del WS
        WSLOGIN_Service servicio = new WSLOGIN_Service();
        WSLOGIN cliente = servicio.getWSLOGINPort();
        WSCredito_Service servicio2 = new WSCredito_Service();
        WSCredito cliente2 = servicio2.getWSCreditoPort();
        
        int tecnicos = cliente2.TecnicosDisponiblesWeb();
        sesion.setAttribute("tecnicos", tecnicos);
        
        
        //validamos el ws 
        
        char tipo = (char) cliente.login(user, pass);
        
        if (tipo=='T' || tipo=='A' || tipo=='C')
        {
            sesion.setAttribute("tipo", tipo);
            sesion.setAttribute("username", user);
            request.getRequestDispatcher("Inicio.jsp").forward(request, response);
        }
        else
        {
            request.setAttribute("err", "Credenciales incorrectas owo");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
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
