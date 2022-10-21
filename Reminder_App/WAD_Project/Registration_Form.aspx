<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_Form.aspx.cs" Inherits="WAD_Project.Registration_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="stylesheet" href=".../Assets/libraries/Bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="../Assets/libraries/Bootstrap/css/style.css" />
	<link rel="stylesheet" href="../Assets/libraries/Bootstrap/css/StyleSheet1.scss" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
   <section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-3 " style="font-size:50px;">
					<h2 class="heading-section">Register Yourself</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-7 col-lg-5">
					<div class="wrap" style="border:0.5px solid black;">
						
						<div class="login-wrap p-4 p-md-5">
			      	
							<form class="signin-form" runat="server">
			      		<div class="form-group mt-3">
			      			<input type="text" class="form-control" id="username" runat="server">
			      			<label class="form-control-placeholder" for="username">User Name</label>
							  <%--<asp:TextBox ID="username1" runat="server"></asp:TextBox>
                    &nbsp;<br />--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="User name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="username" ErrorMessage="Username must be 6 to 30 characters long" ForeColor="Red" ValidationExpression="^.{6,30}$"></asp:RegularExpressionValidator>
			      		</div>
						<div class="form-group">
		              <input id="password" type="password" class="form-control" runat="server"/>
		              <label class="form-control-placeholder" for="password">Password</label>
							<span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required" ForeColor="Red" ControlToValidate="password"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="password" ErrorMessage="Password must have: Minimum 8 characters atleast 1 Alphabet" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])[A-Za-z\d]{8,}$"></asp:RegularExpressionValidator>
		              
		            </div>
					  
					<div class="form-group mt-3">
			      			<input type="text" class="form-control" id="name" runat="server">
			      			<label class="form-control-placeholder" for="name">Name</label>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Name is required" ForeColor="Red" ControlToValidate="name"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="name" ErrorMessage="Name must be 2 to 30 characters long" ForeColor="Red" ValidationExpression="^.{2,30}$"></asp:RegularExpressionValidator>
			      		</div>
					<div class="form-group mt-3">
			      			<input type="email" class="form-control" id="email" runat="server">

			      			<label class="form-control-placeholder" for="email">Email</label>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Email is required" ForeColor="Red" ControlToValidate="email"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
			      		</div>
					<div class="form-group mt-3">
			      			<input type="text" class="form-control" id="contact" runat="server">
			      			<label class="form-control-placeholder" for="contact">Contact No</label>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Contact number is required" ForeColor="Red" ControlToValidate="contact"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="contact" ErrorMessage="Invalid Phone number" ForeColor="Red" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
			      		</div>
					<div class="form-group">
						
                        <asp:Button ID="SignupBtn" runat="server" Text="Sign Up" class="form-control btn btn-primary rounded submit px-3" OnClick="SignupBtn_Click"  />
					</div>
		          <div class="auto-style15">
            <asp:Label ID="Label1" runat="server" Text="Already a User?"></asp:Label>&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" OnDataBinding="on_click" style="color:black;" NavigateUrl="~/Login_Form.aspx">Sign In</asp:HyperLink>
            </div>
		          </form>
		          
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="../Assets/libraries/Bootstrap/js/jquery.min.js"></script>
  <script src="../Assets/libraries/Bootstrap/js/popper.js"></script>
  <script src="../Assets/libraries/Bootstrap/js/bootstrap.min.js"></script>
  <script src="../Assets/libraries/Bootstrap/js/main.js"></script>


    
</body>
</html>


