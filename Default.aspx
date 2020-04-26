<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="job_form._Default" %>


<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://kit.fontawesome.com/f373a6ea32.js" crossorigin="anonymous"></script> 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="icon" href="images/logo.png" type="image/png">
<title> Job Seeker</title>
    <!--<link href="jquery.datetimepicker.min.css" rel="stylesheet" />
    <link type="text/css" href="css/smoothness/jquery-ui-1.7.1.custom.css" rel="stylesheet" />-->

     
</head>
<body style="background-color:#f9f9f98b;">
	<form id="form1" runat="server">
    
   <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>&nbsp;&nbsp;&nbsp;
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script> 
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #00BFA6;  ">
        <div class="collapse navbar-collapse" id="navbarText">
            <div class="d-flex align-items-center">
                <a class="navbar-brand logo_h" href="default.aspx"><img src="images/logo.png" style="height: 35px;width: 35px;"
                        alt=""></a>
                <h4 class="navbar-text text-light mt-1">
                    Job Seeker
                </h4>

            </div>

        </div>
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link text-light">About Us <span class="sr-only">(current)</span></a>
            </li>
            &nbsp;&nbsp;
            <li class="nav-item">
                <a class="nav-link btn btn-light" style="color: #00BFA6;">Contact us</a>
            </li>
        </ul>
    </nav>
    <div class="container-fluid mb-5 ">
        <div class="row align-items-center d-flex justify-content-center ">
            <div class="col-5">
                <img src="images/bitmap.png" style="height: 250px; margin-top: 30px; " />
            </div>
            <div class="col-5">
                <h2 class="text-dark font-italic" style="font-family:Georgia, 'Times New Roman', Times, serif"> Register
                    your details with our website
                    for best job which you want in present
                    IT
                    industries </h2>
            </div>
        </div>
<!-----Name -------------------------------------------------------->
<tr>
   <td>     <div class="row align-items-center  d-flex justify-content-center mt-5 ">
            <div class="col-4 d-flex justify-content-center">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-dark "
                            style="background-color: #00BFA6;font-weight: bolder; font-size: 16px;"
                            id="basic-addon1">First Name</span>

     </div>
  <asp:TextBox ID="txtbx1" runat="server" type="text" class="form-control" placeholder="First_Name" aria-label="First Name"
                        aria-describedby="basic-addon1"></asp:TextBox>
          </div>

            </div>
            <div class="col-4 d-flex justify-content-center">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-dark "
                            style="background-color: #00BFA6;font-weight: bolder; font-size: 16px;"
                            id="basic-addon1">Last Name</span>

                    </div>
               

        <asp:TextBox ID="txtbx2" runat="server" type="text" class="form-control" placeholder="Last_Name"  aria-label="Last Name"
                        aria-describedby="basic-addon1"></asp:TextBox>
                    </div>
            </div>
        </div>
       </td>
</tr> </br></br>
<!----- Date Of Birth -------------------------------------------------------->
<tr>
<td>
    <div class="row align-items-center  d-flex justify-content-center mt-5 ">
            <div class="col-4 d-flex justify-content-center">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-dark "
                            style="background-color: #00BFA6;font-weight: bolder; font-size: 16px;"
                            id="basic-addon1">Dob</span>
                    </div>
      <asp:TextBox runat="server" type="date" id="bday" value=""  class="form-control" aria-label="Dob" aria-describedby="basic-addon1"></asp:TextBox>
                </div>

            </div>
 
</td>
</tr></br></br>
<!----- Gender ---------------------------------------------------------->
<tr><td>
    <div class="col-4 d-flex justify-content-center">
                <div class="input-group mb-3 align-items-center ">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-dark "
                            style="background-color: #00BFA6;font-weight: bolder; font-size: 16px;"
                            id="basic-addon1">Gender</span>
                    </div>
                    <div class="form-check ml-2 ">
<asp:RadioButton runat="server"  id="RadioButton1" class="form-check-input" GroupName="control"></asp:RadioButton>
        <label class="form-check-label" for="RadioButton1">
                           Male
                        </label>                   
    </div>
                    <div class="form-check ml-2">
    <asp:RadioButton runat="server"  id="RadioButton2" class="form-check-input"  GroupName="control"></asp:RadioButton>
                   <label class="form-check-label" for="RadioButton2">
                         Female
                        </label>          
                        </div>
                </div>
            </div>
        </div>
</td>
</tr></br></br>
<!----- e-mail id ---------------------------------------------------------->
<tr><td>
    <div class="row align-items-center  d-flex justify-content-center mt-5 ">
    <div class="col-4 d-flex justify-content-center">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-dark "
                            style="background-color: #00BFA6;font-weight: bolder; font-size: 16px;"
                            id="basic-addon1">Email</span>

                    </div>
<asp:TextBox ID="txtbx3" runat="server" type="text"  maxlength="100" class="form-control" placeholder="eg:test@gmail.com" aria-label="Email"
                        aria-describedby="basic-addon1"></asp:TextBox>
    </div>
            </div>
  </td>
</tr></br></br>
<!----- address ---------------------------------------------------------->
<tr><td>

            <div class="col-4 d-flex justify-content-center">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-dark "
                            style="background-color: #00BFA6;font-weight: bolder; font-size: 16px;"
                            id="basic-addon1">Address</span>
                        </span>
                    </div>
    <asp:TextBox ID="txtbx4" runat="server" type="text"  class="form-control align-items-center" aria-label="Address"
                        aria-describedby="basic-addon1" ></asp:TextBox>
        </div>
            </div>
        </div>
        </td>
</tr></br></br>
 <tr>
 	<!----- pin code ---------------------------------------------------------->
<tr><td>
<div class="row align-items-center  d-flex justify-content-center mt-5 ">
            <div class="col-4 d-flex justify-content-center">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-dark "
                            style="background-color: #00BFA6;font-weight: bolder; font-size: 16px;"
                            id="basic-addon1">Pincode</span>

                    </div>

<asp:TextBox ID="txtbx5" runat="server" type="text" class="form-control" placeholder="eg:000000" aria-label="Pincode"
                        aria-describedby="basic-addon1" maxlength="6"></asp:TextBox>
     </div>

            </div>
</td>
</tr></br></br>
<!----- Mobile Number ---------------------------------------------------------->
<tr><td>
    <div class="col-4 d-flex justify-content-center">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-dark "
                            style="background-color: #00BFA6;font-weight: bolder; font-size: 16px;"
                            id="basic-addon1">Phone Number</span>

                    </div>
<asp:TextBox ID="txtbx6" runat="server" type="text" class="form-control" placeholder="eg:7777788888" aria-label="Phone Number"
                        aria-describedby="basic-addon1" maxlength="10"></asp:TextBox>
     </div>
            </div>
        </div>
</td>
</tr></br></br>
<!----- edu details ---------------------------------------------------------->
<tr>
	
    <div class="row mt-3">
            <div class="col-12 d-flex justify-content-center ">
                <h3 class="text-dark font-italic" style="font-family:Georgia, 'Times New Roman', Times, serif">
                    Education Details </h3>
            </div>
        </div>
</tr></br></br>
<!----- Mobile Number ---------------------------------------------------------->
<tr>
	 <td>

<!--<select name="courseval" id="courseval">
    <option value=0></option>
<option value="1">B.E/B.TECH</option>
<option value="2">OTHERS</option>
</select>-->
    <div class="row align-items-center  d-flex justify-content-center mt-5 ">
    <div class="col-4 d-flex justify-content-center">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-dark "
                            style="background-color: #00BFA6;font-weight: bolder; font-size: 16px;"
                            id="basic-addon1">Course</span>

                    </div>
   <asp:DropDownList runat="server" class="custom-select" id="courseval">
   <asp:ListItem value="--select one--"></asp:ListItem>
            <asp:ListItem>B.E/B.TECH</asp:ListItem>
            <asp:ListItem>OTHERS</asp:ListItem>
</asp:DropDownList></div>
            </div>
	</td>
</tr>
<!----- dept ---------------------------------------------------------->
<tr><td>
    
            <div class="col-4 d-flex justify-content-center">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-dark "
                            style="background-color: #00BFA6;font-weight: bolder; font-size: 16px;"
                            id="basic-addon1">Specialization</span>

                    </div>
<asp:DropDownList runat="server" class="custom-select" id="dept">
<asp:ListItem  value="--select one--"></asp:ListItem>
<asp:ListItem>Information Technology</asp:ListItem>
<asp:ListItem>Chemical Engineering</asp:ListItem>
<asp:ListItem>ComputerScience Engineering</asp:ListItem>
<asp:ListItem>Electrical and Electronics  Engineering</asp:ListItem>
<asp:ListItem>Electrical and Communication Engineering</asp:ListItem>
<asp:ListItem>Civil Engineering</asp:ListItem>
<asp:ListItem>Mechanical Engineering</asp:ListItem>
<asp:ListItem>Others</asp:ListItem>
</asp:DropDownList>
                    </div>
            </div>
        </div>
	</td>
</tr></br></br>
<!----- institute name ---------------------------------------------------------->

<tr><td>
<div class="row align-items-center  d-flex justify-content-center mt-5 ">
            <div class="col-4 d-flex justify-content-center">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-dark "
                            style="background-color: #00BFA6;font-weight: bolder; font-size: 16px;"
                            id="basic-addon1">Institute Name</span>
                        </span>
                    </div>

     <asp:TextBox ID="txtbx7" runat="server" type="text" class="form-control" placeholder="eg:college name" aria-label="Institute Name"
                        aria-describedby="basic-addon1" ></asp:TextBox>
     </div>
            </div>
</td>
</tr></br></br>
<!----- passing yr ---------------------------------------------------------->
<tr><td>
    <div class="col-4 d-flex justify-content-center">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-dark "
                            style="background-color: #00BFA6;font-weight: bolder; font-size: 16px;"
                            id="basic-addon1">Passout Year</span>
                    </div>
<asp:DropDownList runat="server" id="pass_yr" class="form-control" placeholder="eg:2015" aria-label="Passout Year"
                        aria-describedby="basic-addon1">
 
<asp:ListItem value="">Year:</asp:ListItem>
<asp:ListItem>2012</asp:ListItem>
<asp:ListItem>2011</asp:ListItem>
<asp:ListItem>2010</asp:ListItem>
<asp:ListItem>2009</asp:ListItem>
<asp:ListItem>2008</asp:ListItem>
<asp:ListItem>2007</asp:ListItem>
<asp:ListItem>2006</asp:ListItem>
<asp:ListItem>2005</asp:ListItem>
<asp:ListItem>2004</asp:ListItem>
<asp:ListItem>2003</asp:ListItem>
<asp:ListItem>2002</asp:ListItem>
<asp:ListItem>2001</asp:ListItem>
<asp:ListItem>2000</asp:ListItem>
</asp:DropDownList>
                    </div>
            </div>
        </div>
</td></tr></br></br>
<!----- other details ---------------------------------------------------------->
<tr>
    <div class="row mt-3">
            <div class="col-12 d-flex justify-content-center ">
                <h3 class="text-dark font-italic" style="font-family:Georgia, 'Times New Roman', Times, serif">
                    Other Details </h3>
            </div>
        </div>

</tr></br></br>
<!----- lang  ----------------------------------------------------------> 
<tr><td>
 <div class="row align-items-center  d-flex justify-content-center mt-5 ">
            <div class="col-4 d-flex justify-content-center">
                <div class="input-group align-items-center mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-dark "
                            style="background-color: #00BFA6;font-weight: bolder; font-size: 16px;"
                            id="basic-addon1">Languageus<br /> are Known</span>
                    </div>
                    <div class="form-check ml-2 ">

<asp:CheckBox ID="CheckBox1" runat="server"   class="form-check-input"  ></asp:CheckBox>
                        <label class="form-check-label" for="CheckBox1">
                            ENGLISH
                        </label>
    </div>
 <div class="form-check ml-2 ">
  <asp:CheckBox ID="CheckBox2" runat="server"  class="form-check-input"  ></asp:CheckBox>
     <label class="form-check-label" for="CheckBox2">
                            Tamil
                        </label>
</div>
  <div class="form-check ml-2 ">
    <asp:CheckBox ID="CheckBox3" runat="server"  class="form-check-input"  ></asp:CheckBox>
      <label class="form-check-label" for="CheckBox3">
                            OTHERS
                        </label>
</div>
     </div>
            </div>
</td>
</tr></br></br>
<!----- married status  ----------------------------------------------------------> 
<tr><td>
            <div class="col-4 d-flex justify-content-center">
                <div class="input-group mb-3 align-items-center ">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-dark "
                            style="background-color: #00BFA6;font-weight: bolder; font-size: 16px;"
                            id="basic-addon1">Married Status</span>
                    </div>
 <div class="form-check ml-2 ">
    <asp:RadioButton runat="server"  id="RadioButton3" class="form-check-input"  GroupName="control1"></asp:RadioButton>
 <label class="form-check-label" for="RadioButton3">
                            yes
                        </label>   
 </div>
 <div class="form-check ml-2">
		<asp:RadioButton runat="server"  id="RadioButton4" class="form-check-input"  GroupName="control1" ></asp:RadioButton>
<label class="form-check-label" for="RadioButton4">
                            No
                        </label>   		
 </div>
    </div>
            </div>
        </div>
</td>
</tr></br></br>
<!----- Key skill   ----------------------------------------------------------> 
<tr>
	<td>
		<div class="row align-items-center  d-flex justify-content-center mt-5 ">
            <div class="col-4 d-flex justify-content-center">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-dark "
                            style="background-color: #00BFA6;font-weight: bolder; font-size: 16px;"
                            id="basic-addon1">Key Skills</span>

                    </div>
        <asp:TextBox ID="txtbx8" runat="server" type="text" class="form-control" placeholder="eg: C & C++ " aria-label="Key Skills"
                        aria-describedby="basic-addon1" ></asp:TextBox>
                    </div>

            </div>
	</td>
</tr><br /><br />
<!----- exp  ----------------------------------------------------------> 
<tr> 
<td><div class="col-4 d-flex justify-content-center">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-dark "
                            style="background-color: #00BFA6;font-weight: bolder; font-size: 16px;"
                            id="basic-addon1">Role</span>
                    </div> 
  
<asp:TextBox ID="txtbx9" runat="server" type="text" class="form-control" placeholder="eg:Application developer" aria-label="Role"
                        aria-describedby="basic-addon1" ></asp:TextBox>
                    </div>
    </div>
            </div>
        

</td>
</tr></br></br>
<!----- btn  ----------------------------------------------------------> 
<tr>
	        <div class="row mt-5">
            <div class="col-12 d-flex justify-content-center ">
	<td><asp:Button runat="server" Text="SUBMIT" OnClick="btn_click" id="btn" class="btn"
                    style="background-color: #00BFA6; font-weight: bolder; width: 200px; " />
        </div>
        </div>
    </div>
	</td>
</tr>
        <br />
        <br />
        

</form>
</body>
</html>
