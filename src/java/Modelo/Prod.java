package Modelo;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import static Modelo.conectar.Conecto;
import com.mysql.jdbc.Connection;
import java.awt.HeadlessException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author lepoimel
 */
@WebServlet(urlPatterns = {"/Prod"})
public class Prod extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            //inicio nico
            String Nom = request.getParameter("nom");
            String Desc = request.getParameter("des");
            float Prec = Float.parseFloat(request.getParameter("pre"));
            boolean Disp = Boolean.parseBoolean(request.getParameter("dis"));

            String Imag = request.getParameter("foto1");
            File Imag1 = new File(Imag);
            String Ruta1 = Imag1.getAbsolutePath();

            int Cate = Integer.parseInt(request.getParameter("cat"));
            int Area = Integer.parseInt(request.getParameter("are"));

            Connection con = null;
            con = Conecto();

            PreparedStatement ps;
            ResultSet rs;

            ps = con.prepareStatement("INSERT INTO productos (Nombre, Descripcion, Precio, Disponible, idCategoria, idSector, Imagen1) VALUES(?,?,?,?,?,?,?)");
            ps.setString(1, Nom);
            ps.setString(2, Desc);
            ps.setFloat(3, Prec);
            ps.setBoolean(4, Disp);
            ps.setInt(5, Cate);
            ps.setInt(6, Area);
            ps.setString(7, Ruta1);

            int res = ps.executeUpdate();

            con.close();

        } catch (HeadlessException | SQLException e) {
            System.out.println(e);
        }

        //fin nico
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
        try {
            processRequest(request, response);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Prod.class
                    .getName()).log(Level.SEVERE, null, ex);

        } catch (SQLException ex) {
            Logger.getLogger(Prod.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
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
            processRequest(request, response);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Prod.class
                    .getName()).log(Level.SEVERE, null, ex);

        } catch (SQLException ex) {
            Logger.getLogger(Prod.class
                    .getName()).log(Level.SEVERE, null, ex);
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
