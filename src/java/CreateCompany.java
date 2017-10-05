/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.awt.Component;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class CreateCompany extends HttpServlet {
 private Component rootPane;
    private String STATUS;

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
        HttpSession session= request.getSession();
        String INTERNSHIPTYPE=request.getParameter("InternshipType");
        String COMPANYNAME=request.getParameter("CompanyName");
        String ADDRESS=request.getParameter("Address");
        String COMPANYCITY=request.getParameter("CompanyCity");
        String POSTAL=request.getParameter("Postal");
        String COUNTRY = request.getParameter("Country");
        String PROVINCE= request.getParameter("Province");
        String CONTACT_PERSON_FIRST = request.getParameter("ContactPerson_FirstName");
        String CONTACT_PERSON_LAST = request.getParameter("ContactPerson_LastName");
        String CONTACT_PERSON_POSITION = request.getParameter("ContactPerson_Position");
        String TELEPHONE = request.getParameter("Contact Number");
        String EMAIL_ID=request.getParameter("Email_id");
        String COMPANYWEBSITE=request.getParameter("CompanyWebsite");
        String NOTES = request.getParameter("Notes");
     STATUS = request.getParameter("text");
        try {
              
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database1", "root", "1234");
                  PreparedStatement ps = con.prepareStatement("insert into createcompany values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                  ps.setString(1,INTERNSHIPTYPE);
                  ps.setString(2,COMPANYNAME);
                   ps.setString(3,ADDRESS);
                   ps.setString(4, COMPANYCITY);
                   ps.setString(5, POSTAL);
                   ps.setString(6, COUNTRY);
                      ps.setString(7, PROVINCE);
                  ps.setString(8,CONTACT_PERSON_FIRST);
                 ps.setString(9,CONTACT_PERSON_LAST);
                 ps.setString(10,CONTACT_PERSON_POSITION);
                 ps.setString(11, TELEPHONE);
                 ps.setString(12,EMAIL_ID);
                 ps.setString(13,COMPANYWEBSITE);
                 ps.setString(14,NOTES);
                        
                      
                  ps.executeQuery();
                   session.setAttribute("session_INTERNSHIPTYPE",INTERNSHIPTYPE);
                     session.setAttribute("session_COMPANYNAME", COMPANYNAME);
                     session.setAttribute("session_ADDRESS",ADDRESS);
                     session.setAttribute("session_COMAPNYCITY",COMPANYCITY);
                     session.setAttribute("session_POSTAL", POSTAL);
                     session.setAttribute("session_COUNTRY", COUNTRY);
                     session.setAttribute("session_PROVINCE",PROVINCE);
                     session.setAttribute("session_CONTACT_PERSON_FIRST",CONTACT_PERSON_FIRST);
                     session.setAttribute("session_CONATCT_PERSON_LAST",CONTACT_PERSON_LAST );
                     session.setAttribute("session_CONTACT_PERSON_POSITION", CONTACT_PERSON_POSITION);
                     session.setAttribute("session_TELEPHONE",TELEPHONE );
                     session.setAttribute("session_EMAIL_ID",EMAIL_ID);
                     session.setAttribute("session_COMPANYWEBSITE",COMPANYWEBSITE );
                     session.setAttribute("session_NOTES",NOTES );

                     response.sendRedirect("Profile.jsp");
                 
        }
                  catch(IOException | ClassNotFoundException | SQLException e)
                  {
                  System.out.println(e);
                  }
      
                  }
    
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
            throws ServletException, IOException 
    {
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
    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
