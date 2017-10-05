/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class StudentDelete extends HttpServlet {
    

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        String St_Id=request.getParameter("stId");
        String FNAME=request.getParameter("fname");
        String LNAME=request.getParameter("lname");
        String GENDER=request.getParameter("gender");
        String COUNTRY=request.getParameter("country");
        String SEMESTER=request.getParameter("semester");
       
        String YEAR=request.getParameter("year");    
        String EMAIL_ID=request.getParameter("email");
       
    try
    {
              
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database1", "root", "1234");
                  PreparedStatement ps = con.prepareStatement("delete register WHERE EMAIL_ID='"+EMAIL_ID+"'");
                   ps.executeUpdate();
                   out.print(St_Id);
                   out.print(FNAME);
                   out.print(LNAME);
                   out.print(GENDER);
                   out.print(COUNTRY);
                   out.print(SEMESTER);
                   out.print(YEAR);
                   out.print(EMAIL_ID);
                  
                    response.sendRedirect("StudentDelete.jsp");
    }
     catch(Exception e)
                  {
                  System.out.println(e);
                  }
      
    }             
        


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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