


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/NewJob.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
         <div class="main">

            
                <div class="home_header">
                    <div class="upper_left">
                        
                        <h1>logout</h1>
                    </div> 
                <div class="logo">
                    <img src="css/images/image14.png" height="100%" width="100%">  
                </div>
                    <div class="upper_right">
                        <a href="AboutUs">About Us</a> |
                         <a href="ContactUs" >Contact Us</a> |
                          <a href="Home.jsp" >Home</a> 
                              
                   
                    </div>
                </div>
             
             <div class="nav" >
                     <ul>
    <li>
      <a href="Admin.jsp">Home</a>
    </li>
    <li>
      <a href="AboutUs.jsp">About</a>
    </li>
    <li>
      <a href="Register.jsp">Registration</a>
    </li>
    <li>
        <a href="NewJob.jsp">Jobs</a>
    </li>
    <li>
      <a href="ContactUs.jsp">Contact</a>
    </li>
  </ul>
                    </div>
               <div class="content">  
      
        
       
          
                <div class="form">
                     <%
        String JobGroup, Company, Status, Position, Description, Responsibilities, Requirements, Salary;
            try {
            
            Class.forName("com.mysql.jdbc.Driver");
          // Establish the Connection
         
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/database1", "root", "1234");
            PreparedStatement ps = con.prepareStatement("select * from TABLE NAME");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {     JobGroup=rs.getString("");
               Company=rs.getString("");
                Status=rs.getString("");
                Position=rs.getString("");
                Description=rs.getString("");
                Responsibilities=rs.getString("");
                Requirements=rs.getString("");
                 Salary=rs.getString("");     
                
                %>
                
                 <form name="register" action="login"  method="post" onSubmit="return validate()"  ><br>
                        Job Group: <input type="text" name="JobGroup" class="regis_text" value="<%= JobGroup %>"<br><br><br>
                        Company: <input type="text" name="Company" class="regis_text" value="<%= Company %>"<br>  <br><br>
                        Status:<input type="text" name="Status" class="regis_text" value="<%= Status %>"<br><br>
                        
                        Position:<br>  <input type="text" name="Position" class="regis_text" value="<%= Position %>"<br><br>
                        Description: <br> <input type="text" name="Description" class="regis_text" value="<%= Description %>"  <br><br>
                        Responsibilities:    <br>  <input type="text" name="Responsibilities" class="textarea" value="<%=Requirements%>"><br><br>
                        Requirements: <br> <input type="text" name="Requirements" class="regis_text"><br><br>
                        Salary : <br><input type="number" name="Salary" class="regis_text" value="<%=Salary%>"> <br><br><br>
                    
                    
                       <input  type="button" value="Delete" class="button_design" onclick="location='Admin.jsp'" />
                </form>
               
                
                
                
                <%
            }
            }
            catch(Exception e)
           {
                out.print(e);                            
            }
        %>
        
                </div>
           </div>
        
        </div>
    </body>
</html>
