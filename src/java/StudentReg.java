/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author acer
 */
public class StudentReg extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, Exception{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            String USERID=request.getParameter("txtUserId");
            int userid=Integer.parseInt(USERID);
            String Password = request.getParameter("txtPassword");
           String FirstName = request.getParameter("txtFirstName");
          String LastName = request.getParameter("txtLastName");
          String Address =request.getParameter("txtAddress");
          String Phone = request.getParameter("txtPhone");
          //double Phone=Double.parseDouble(Ph);
          String EmailId = request.getParameter("txtEmailId");
          String Role ="Student";
          String Course = request.getParameter("txtCourse");
          String Branch = request.getParameter("txtBranch");
          String Session = request.getParameter("txtSession");
          String Section = request.getParameter("txtSection");
          int Attendance=0;
          
           DbCon db = new DbCon();
           Connection con = db. getCon();
          CallableStatement StoredProcedure=con.prepareCall("{call dma.dma_student_reg("+userid+",'"+Password+"','"+FirstName+"','"+LastName+"','"+Address+"','"+Phone+"','"+EmailId+"','"+Role+"','"+Course+"','"+Branch+"','"+Session+"','"+Section+"',"+Attendance+")}");
          StoredProcedure.executeUpdate();
           
          response.sendRedirect("Registration.jsp");  
          HttpSession session=request.getSession();  
              session.setAttribute("name",USERID);
          
          
          }catch(NumberFormatException | ClassNotFoundException | SQLException | IOException e){
            
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (Exception ex) {
            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
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
