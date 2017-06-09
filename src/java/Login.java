/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author acer
 */
//@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {

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
            throws ServletException, IOException, SQLException, Exception {
        
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            String userid= request.getParameter("txtUserId");
            String pass = request.getParameter("txtPassword");
            int UserId=Integer.parseInt(userid);
            
            DbCon db = new DbCon();
            Connection con = db. getCon();
          
            //For Staff or Admin Users Login
          CallableStatement StaffAdmin=con.prepareCall("{call dma.dma_login_staff_admin("+UserId+",'"+pass+"')}");
          StaffAdmin.execute();
          ResultSet rs=StaffAdmin.getResultSet();
           //String role= rs.getString("ROLE"); 
         if(rs.next()){
             String uid = rs.getString("USER_ID");
             String role=rs.getString("ROLE");
             if("staff".equals(rs.getString("ROLE"))||"Staff".equals(rs.getString("ROLE"))||"STAFF".equals(rs.getString("ROLE")))
             {
                 response.sendRedirect("StaffView.jsp");
                 HttpSession session=request.getSession();  
                 session.setAttribute("name",uid);
                 session.setAttribute("role",role);
                 //HttpSession session1=request.getSession();
                 //session1.setAttribute("role",role);
             }
             else
             {
                 response.sendRedirect("AdminView.jsp");
                 HttpSession session=request.getSession();
                 session.setAttribute("name",uid);
                 
                 session.setAttribute("role",role);
             }
         }
             else
             {
                CallableStatement Student=con.prepareCall("{call dma.dma_login_student("+UserId+",'"+pass+"')}"); 
                 Student.execute();
                 ResultSet rs1=Student.getResultSet();
                 if(rs1.next()){
                 
                     String uid1=rs1.getString("USER_ID");
                 
                    response.sendRedirect("StudentInfo.jsp");
                    HttpSession session=request.getSession();  
                    session.setAttribute("id",uid1); 
                   }
                 else
                     response.sendRedirect("index.jsp");
             }
               
         
             
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
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
