

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Create Company</title>
        
        <script>



            function com() {
                var Internshiptype = document.register.InternshipType.value;
                var Companyname = document.register.CompanyName.value;
                var address = document.register.Address.value;
                var companycity = document.register.CompanyCity.value;
                var postal = document.register.Postal.value;
                var country = document.register.Country.value;
                var province = document.register.Province.value;
                var contact_person_first = document.register.Contact_Person_FirstName.value;
                var contact_person_last = document.register.Contact_Person_LastName.value;
                var contact_person_position = document.register.Contact_Person_Position.value;
                var Telephone = document.register.Telephone.value;
                var email = document.register.Email.value;
                var companywebsite = document.register.CompanyWebsite.value;
                var notes = document.register.Notes.value; 
                if (internshiptype === null || internshiptype === "")
                {
                    alert("Please enter the InternshipType");
                }
                if (comanyname === null || companyname === "") {
                    alert("Please enter the CompanyName");
                    return false;


                }
                else if (address === null || address === ""){
                    alert("Please enter the Address")
                    return False;
                }
                else if (companycity === null || companycity === "")
                {
                    alert("Please enter the CompanyCity");

                    return false;
                }
                else if(postal === null || postal ==="")
                {
               alert("Please Enter the Postal"); 
        }
        else if (country === null || country === "")
        {
            alert("Please enter the Country");
        }
         else if (province === null || province === "")
                    {
                        alert("Please enter the Province");
                        return false;
                    }

                else if (contact_person_first === null || contact_person_first === "")
                {
                    alert("Enter the Contact Person Firstname");

                    return false;
                }
                else if (contact_person_last === null || contact_person_last === "")
                {
                    alert("Enter the Contact Person Lastname");

                    return false;
                }
                 else if (contact_person_position === null || contact_person_position === "")
                {
                    alert("Enter the Contact Person Position");

                    return false;
                }
                
                else if (email1 === null || email1 === "")
                {
                    alert("Enter the Email");

                    return false;
                }

                if (!filter.test(email1))
                {
                    alert("Please Enter the valid email");

                    return false;
                }
                else if (companywebsite === null || companywebsite === "")
                {
                    alert("Enter the Company's Website");
                   
                }
                else if (notes === null || notes === "")
                {
                    alert("Enter the notes");
                }
                }
    
        </script> 

    </head>
    <body>

        <div >

            <div >
                

            </div>
            <div>
                 Create Company
            </div>
            <div >

            </div>


            <div >
                <form name="register" action="Jobs.jsp"  method="post" onsubmit="return reg()" ><br>
                    
                    InternshipType:<br> <select name="InternshipType">
                        <option value="MAC Project">MAC Project</option>
                        <option value="Industry">Industry</option>
                        <option value="Other">Other</option>
                    </select><br><br>
                    CompanyName:<br>  <input type="text" name="CompanyName" class="regis_text"><br><br>
                    Address:<br>  <input type="text" name="Address" class="regis_text"><br><br>
                    Company City:  <input type="text" name="CompanyCity" ><br><br>
                    Postal :<input type="text" name="Postal"> <br><br>
                    Country:    <br>  <input type="text" name="Country" class="regis_text"><br><br>
                    Province:    <br>  <input type="text" name="Province" class="regis_text"><br><br>
                    ContactPerson_FirstName:    <br>  <input type="text" name="ContactPerson_FirstName" class="regis_text"><br><br>
                    ContactPerson_LastName:    <br>  <input type="text" name="ContactPerson_LastName" class="regis_text"><br><br>
                    ContactPerson_Position:    <br>  <input type="text" name="ContactPerson_Position" class="regis_text"><br><br>
                    Telephone:    <br>  <input type="text" name="Telephone" class="regis_text"><br><br>
                    Email_id: <br>  <input type="text" name="Email_id" class="regis_text"><br><br>
                    CompanyWebsite:    <br>  <input type="text" name="CompanyWebsite" class="regis_text"><br><br>
                    Notes:    <br>  <input type="text" name="Notes" class="regis_text"><br><br>
                   
                                        <input  type="button" value="Create Company"  />
                </form>


            </div>
        </div>
    </body>
</html>
