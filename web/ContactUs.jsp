

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link href="css/ContactUs.css" rel="stylesheet" type="text/css"/>
 <script>
            function validateform() {
                var name = document.myform.Email_id.value;
                var password = document.myform.Password1.value;


                if (name === null || name === "") {
                    alert("Please enter your Email Id");
                    return false;
                }
                else if (password === null || password === "")
                {
                    alert("You should enter your password");
                    return false;
                }

            }
</script>
    </head>
    <body>
        <div class="home_header">
          
<%
                String FirstNAME=(String)session.getAttribute("session_FNAME");
                 String Email_id=(String)session.getAttribute("session_EMAIL_ID");

                 if(Email_id==null)
                 {
        %>
      
       
         
         <%
                 }
                 else
                 {
                     %>
                     
                     <p class="values">       
                    <a href="Students.jsp"> <%=FirstNAME%> </a> <br/>
                    <a href="#"> Logout </a>
         </p>
                      
                      
                      <%
                      }
                     %>

          <div class="main">

            
                <div class="home_header">
                    <div class="upper_left">
                        <h1>(519)-253-3000</h1>
                        <h1>email@uwindsor.ca</h1>
                    </div> 
                <div class="logo">
                    <img src="css/images/image14.png" height="100%" width="100%">  
                </div>
                    <div class="upper_right">
                        <a href="AboutUs">About Us</a> |
                         <a href="ContactUs" >Contact Us</a> |
                          <a href="Home.jsp" >Registration</a> 
                              
                   
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
                <div class="left_side">
                     <div class="form">
                    <div class="regis_header">
                        <h1>REGISTRATION FORM</h1>
                    </div>
                             
            
                     <form  name="myform" action="ContactUs" method="Post"  onsubmit="return validateform()">
                    <br>   First Name: <input type="text" name="FirstName" class="textfield"><br><br>
                          Last Name: <input type="text" name="LastName" class="textfield"><br><br>
                          Email Id: <input type="text" name="EmailId" class="textfield"><br><br>
                          Phone_No: <input type="text" name="Phone" class="textfield"><br><br>
                          Your Message : <textarea class="textarea" name="Message"></textarea><br><br>
                          <input type="Submit" value="Submit" name="Submit" class="Submit">
                          <input type="Submit" value="Clear" name="Submit1" class="Submit">
                </form>
            </div>
                </div>
            <%
                
                 if(Email_id==null)
                 {
        %>     
        <div class="right_side">
                <img src="css/images/User-Administrator-Blue-icon.png" height="50px" width="30%" class="user_login">
                <form action="Userlogin" method="Post">
                 SIGN-IN<br><br>
               <font size="4px"> Email_id:</font> <br>
               <input type="text" name="Email_Id" class="Sign_indesign" > 
               <font size="4px"> Password: </font><br>
               <input type="password" name="Password1" class="Sign_indesign1"><br><br><br>
               <input type="submit" value="Login" class="button_design">
               <font size="4px" ><a href="Register.jsp"><font color="black">Create New Account </a></font></font>
                </form>
                 
                      
                     
            </div> 
         <%
                 }
                 else
                 {
                     %>
                     <div class="home_login">
                         <img src="css/images/1306742985.jpg" height="30px" width="20%" class="img_login">
                   
                     </div>
                      
                      
                      <%
                      }
                     %>
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

