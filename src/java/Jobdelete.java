/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
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

public class Jobdelete extends HttpServlet {

     /* Processes requests for both HTTP
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
       String JOBID = request.getParameter("JobId");
        String JOB_GROUP=request.getParameter("JobGroup");
        String COMPANY=request.getParameter("Company");
        String STATUS=request.getParameter("Status");
        String POSITION=request.getParameter("Position");
        String DESCRIPTION=request.getParameter("Description");
         String RESPONSIBILITIES=request.getParameter("Responsibilities");
        String REQUIREMENTS=request.getParameter(" Requirements");    
        String SALARY=request.getParameter(" Salary");
       
    try
    {
              
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database1", "root", "1234");
                  PreparedStatement ps = con.prepareStatement("delete TABLE newjob WHERE JOBID='"+ JOBID + "'");
                   ps.executeUpdate();
                   out.print(JOB_GROUP);
                   out.print(COMPANY);
                   out.print(STATUS);
                   out.print(POSITION);
                   out.print(DESCRIPTION);
                   out.print(RESPONSIBILITIES);
                   out.print(REQUIREMENTS);
                   out.print(SALARY);
                    response.sendRedirect("JobUpdate.jsp");
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