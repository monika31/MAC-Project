

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jobs</title>
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
                        <a href="AboutUs.jsp">About Us</a> |
                         <a href="ContactUs.jsp" >Contact Us</a> |
                          <a href="Home.jsp" >Home</a> 
                              
                   
                    </div>
                </div>
               
                    <div class="nav" >
                     <ul>
    <li>
      <a href="Home.jsp">Home</a>
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
        String  JobId, JobGroup, Company, Status, Position, Description, Responsibilities, Requirements, Salary;
            try {
            
            Class.forName("com.mysql.jdbc.Driver");
          // Establish the Connection
         
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/database1", "root", "1234");
            PreparedStatement ps = con.prepareStatement("select * from newjob");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
                          {
                 JobId = rs.getString("");
                JobGroup=rs.getString("");
               Company=rs.getString("");
                Status=rs.getString("");
                Position=rs.getString("");
                Description=rs.getString("");
                Responsibilities=rs.getString("");
                Requirements=rs.getString("");
                 Salary=rs.getString("");
                %>
                    <div class="regis_header">
                        <h1>REGISTRATION FORM</h1>
                    </div>
                     <form name="register" action="login"  method="post" onSubmit="return validate()"  ><br>
                         Job ID: <input type="number" name="JobId" class=""regis_txt value="<%=JobId %>" <br><br><br>
                        Job Group: <input type="text" name="JobGroup" class="regis_text" value="<%= JobGroup %>"<br><br><br>
                        Company: <input type="text" name="Company" class="regis_text" value="<%= Company %>"<br>  <br><br>
                        Status:<input type="text" name="Status" class="regis_text" value="<%= Status %>"<br><br>
                        
                        Position:<br>  <input type="text" name="Position" class="regis_text" value="<%= Position %>"<br><br>
                        Description: <br> <input type="text" name="Description" class="regis_text" value="<%= Description %>"  <br><br>
                        Responsibilities:    <br>  <input type="text" name="Responsibilities" class="textarea" value="<%=Requirements%>"><br><br>
                        Requirements: <br> <input type="text" name="Requirements" class="regis_text"><br><br>
                        Salary : <br><input type="number" name="Salary" class="regis_text" value="<%=Salary%>"> <br><br><br>
                    
                    
                     <input  type="button" value="" class="button_design" onclick="location='Admin.jsp'" />
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
                   
                    
               
               
           
  
            
   
      <div id="footer">
		<div>
			<div class="first">
				<h3><a href="index.html">Ecothunder</a></h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent placerat eleifend arcu, sit amet rutrum lectus lobortis quis. Donec aliquam</p>
				<div>
					<p>Telephone. : <span>12345678-90</span></p>
					<p>Fax : <span>23456789-01</span></p>
					<p>Email : <span>ask@ecothunder.com</span></p>
				</div>
			</div>
			<div>
				<h3>Get Social with us!</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent placerat eleifend arcu, sit amet rutrum lectus lobortis quis. Donec aliquam</p>
				<div>
					<a href="http://facebook.com/freewebsitetemplates" class="facebook" target="_blank"></a>
					<a href="http://twitter.com/fwtemplates" class="twitter" target="_blank"></a>
					<a href="#" class="linked-in"></a>
				</div>
			</div>
			<div>
				<h3>Share your thoughts!</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent placerat eleifend arcu, sit amet rutrum lectus lobortis quis. Donec aliquam</p>
				<form action="#">
					<label for="subscribe"><input type="text" id="subscribe" maxlength="30" value="email address" /></label>
					<input class="submit" type="submit" value="" />
				</form>
				<p>Copyright &copy; 2011  Ecothunder Incorporated <br />LRP 727 6783 83839 All rights reserved</p>
			</div>
		</div>
      </div>
               </div>


            
        </body>
</html>
