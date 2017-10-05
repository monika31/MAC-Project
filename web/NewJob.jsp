


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jobs</title>
         <link href="css/NewJob.css" rel="stylesheet" type="text/css"/>
    <script>



            function validate() {
                var jobid = document.register.JobID.value;
                var job group = document.register.JobGroup.value;
                var company = document.register.Company.value;
                var internship type = document.register.InternshipType.value;
                var position = document.register.Position.value;
                var description = document.register.Description.value;
                var responsibilities = document.register.Responsibilities.value;
                var requirements = document.register.Requirements.value;
                var salary = document.register.Salary.value;
                var status = document.register.Status.value;
                if (jobid === null || jobid === "")
                {
                    alert("Please enter the jobid");
                }
               else  if ( job group === null || job group === "") {
                    alert("Please enter the Job Group");
                    return false;

                   }
                else if (company === null || company === "") {
                    alert("Please enter the Company");

                    return false;
                }
                else if (status === null || status === "")
                {
                    alert("Please select the status");
                    return false;
                }
                else if (position === null || position === "")
                {
                    alert("Enter the Position");

                    return false;
                }

                else if ( description === null || description === "")
                {
                    alert("Enter the Description");

                    return false;
                }
                else if (responsibilities === null || responsibilities === "")
                {
                    alert("Enter the Responsibilities");

                    return false;
                }
                else if (salary === null || Salary === "")
                {
                    alert("Please enter the Salary");

                    return false;
                }
                
            }
        </script> 

    </head>
    <body>
        <div class="main">

            
                <div class="home_header">
                    <div class="upper_left">
                        <h1>(519)-253-3000</h1>
                        <h1>email@uwindsor.ca</h1>
                    </div> 
                <div class="logo">
                  <img src="css/images/image14.png" height="99%" width="99%">  
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
                    <div class="regis_header">
                        <h1>Jobs Form</h1>
                    </div>
                  <form name="register" action="login"  method="post" onSubmit="return validate()" ><br>
                      JobID:<br> <input type="number" name="JobID">  <br><br>
                      Job Group:<br> <select class="regis_text" name="job group" >
                            <option value="Select One">Select One</option>
                            <option value="Mobile Development">Mobile Development</option>
                            <option value="System Development">System Development</option>
                            <option value="Technical Support"> Technical Support</option>
                            <option value="Networking"> Networking</option>
                            <option value="Data Analysis">Data Analysis</option>
                            <option value="Testing">Testing</option>
                            <option value="Security">Security</option>
                            <option value="Data Management">Data Management</option>
                        </select><br><br>
                        Company:<br>  <select  name="company"  class="regis_text" >
                            <option value="Google">University Of Windsor</option>
                            <option value="Microsoft">Microsoft</option>
                            <option value="Infosys">Infosys</option>
                            <option value="Amazon">Amazon</option>
                            <option value="Blackberry">Blackberry</option>
                        </select><br><br>
                        Status:<select  name="Status" class="regis_text" >
                        <option value="UnOpen">UnOpen</option>
                        <option value="Open">Open</option>
                        <option value="Close">Close</option>
                    </select><br><br>
                        
                    Position:<br>  <input type="text" name="Position" class="regis_text"><br><br>
                    Description: <br>  <textarea class="textarea" name="Description"></textarea> <br><br>
                    Responsibilities:    <br>  <input type="text" name="Responsibilities" class="textarea" ><br><br>
                    Requirements: <br> <input type="text" name="Requirements" class="regis_text"><br><br>
                    Salary : <br><input type="number" name="Salary" class="regis_text"> <br><br><br>
                    
                    
                    <input class="button_design" type="Submit"  />
                </form>
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
