/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLADOR;

import Clases.Usuario;
import DAO.UsuarioDAO;
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

/**
 *
 * @author Claudio
 */
@WebServlet(name = "servletAgregar", urlPatterns = {"/servletAgregar"})
public class servletAgregar extends HttpServlet {

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
            out.println("<title>Servlet servletAgregar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servletAgregar at " + request.getContextPath() + "</h1>");
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
            //Capturamos las variables desde la web
            int rut = Integer.parseInt(request.getParameter("txtRut"));
            String usuario = request.getParameter("txtUsuario");
            String nombre = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            String correo = request.getParameter("txtEmail");
            int celular = Integer.parseInt(request.getParameter("txtCelular"));
            String fechaNacimiento = request.getParameter("txtFechaNacimiento");
            String direccion = request.getParameter("txtDireccion");
            int telefono = Integer.parseInt(request.getParameter("txtTelefono"));
            String sexo = request.getParameter("txtSexo");
            String ciudad = request.getParameter("txtCiudad");
            String contrasena = request.getParameter("txtContrasena");
            
            //Creamos Usuario y dao
            
            Usuario user = new Usuario(rut, nombre, apellido, correo, celular, fechaNacimiento, direccion, telefono, sexo.charAt(0), ciudad, usuario, contrasena);
            UsuarioDAO dao = new UsuarioDAO();
            
            //Intentamos guardar el usuario
            
            if(dao.agregarUsuario(user)){
                
                request.setAttribute("msj", "Te has registrado correctamente");
                request.getRequestDispatcher("RegistrarUsuario.jsp").forward(request, response);
                
            } else {
                request.setAttribute("err", "Ocurrió un error al registrarte");
                request.getRequestDispatcher("RegistrarUsuario.jsp").forward(request, response);
            }
        } catch (SQLException ex) {
            request.setAttribute("err", "Ocurrió un error al registrarte "+ex.getMessage());
                request.getRequestDispatcher("RegistrarUsuario.jsp").forward(request, response);
            
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
