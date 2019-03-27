package controller;

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
import model.Data;
import model.Trabajador;

@WebServlet(name = "CrearTrabajadorServlet", urlPatterns = {"/crear.do"})
public class CrearTrabajadorServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Data d = new Data();
            Trabajador t = new Trabajador();

            t.setRut(request.getParameter("txtRut"));
            t.setNombre(request.getParameter("txtNombre"));
            t.setApellido(request.getParameter("txtApellido"));
            t.setFk_comuna(Integer.parseInt(request.getParameter("cmbComunas")));
            t.setDireccion(request.getParameter("txtDireccion"));

            int fkbus = Integer.parseInt(request.getParameter("Bus"));
            t.setFk_bus(fkbus);

            d.crearTrabajador(t);

            switch (fkbus) {
                case 1:
                    response.sendRedirect("bus1.jsp");
                    break;
                case 2:
                    response.sendRedirect("bus2.jsp");
                    break;
                default:
                    response.sendRedirect("bus3.jsp");
                    break;
            }

        } catch (SQLException ex) {
            Logger.getLogger(CrearTrabajadorServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CrearTrabajadorServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        processRequest(request, response);
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
