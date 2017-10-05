

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
      <a href="Register.jsp">Registration</a>
    </li>
    <li>
        <a href="NewJob.jsp"> New Jobs</a>
    </li>
    
  </ul>
                    </div>
               <div class="content">  
      
        
       
          
                <div class="form">
                     <%
        String fname, lname, gender, country, semester, year, email;
            try {
            
            Class.forName("");
          // Establish the Connection
         
            Connection con =DriverManager.getConnection("");
            PreparedStatement ps = con.prepareStatement("select * from TABLE NAME");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {        
                fname=rs.getString("FNAME");
                   lname=rs.getString("LNAME");
                     gender=rs.getString("GENDER");
                country=rs.getString("COUNTRY");
                semester=rs.getString("SEMESTER");
                   year=rs.getString("YEAR");
                     email=rs.getString("EMAIL_ID");
                %>
                
                <form name="register" action="Jobs.jsp"  method="post" onclick="return reg()" ><br>
                    
                    
                    First Name:<br>  <input type="text" name="FirstName" class="regis_text" value="<%= fname %>"
                    Last Name:<br>  <input type="text" name="LastName" class="regis_text" value="<%= lname %>"
                    Gender:  <input type="text" name="sex" value="<%= gender %>"
                    <br><br>
                    Semester: <input type="text" name="semester" class="regis_text" value="<%= semester %>"
                    <br> <br>
                    Year:<input type="number" name="Year" class="regis_text" value="<%= semester %>"<br><br>
                    Email_id: <br>  <input type="text" name="Email_id" class="regis_text" value="<%= email %>"<br><br>
                   
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
         <div id="footer">
		<div>
			<div class="first">
                            <h3><a href="index.html">UNIVERSITY OF WINDSOR</a></h3>
				<p>The University of Windsor (U of W or UWindsor) is a public comprehensive and research university in Windsor, Ontario, Canada.[2] It is Canada's southernmost university.[3] It has approximately 15,000 full-time and part-time undergraduate students and over 1,000 graduate students</p>
				<div>
					<p>Telephone. : <span>12345678-90</span></p>
					<p>Fax : <span>23456789-01</span></p>
					<p>Email : <span>ask@uwindsor.ca</span></p>
				</div>
			</div>
			<div>
				<h3>Get Social with us!</h3>
	
				<div>
					<a href="http://facebook.com/freewebsitetemplates" class="facebook" target="_blank"></a>
					<a href="http://twitter.com/fwtemplates" class="twitter" target="_blank"></a>
					<a href="#" class="linked-in"></a>
				</div>
			</div>
			<div>
				<h3>Share your thoughts!</h3>
				
				<form action="#">
					<label for="subscribe"><input type="text" id="subscribe" maxlength="30" value="email address" /></label>
					<input class="submit" type="submit" value="" />
				</form>
				<p>Copyright &copy; 2011  UWINDSOR <br />LRP 727 6783 83839 All rights reserved</p>
			</div>
		</div>
      </div>
              </div>   
    </body>
</html>

        </div>
    </body>
</html>
