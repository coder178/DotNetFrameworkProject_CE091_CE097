<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTask.aspx.cs" Inherits="WAD_Project.AddTask" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
					<h2 class="heading-section">Add your task!</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-7 col-lg-5">
					<div class="wrap" style="border:0.5px solid black;">
						
						<div class="login-wrap p-4 p-md-5">
			      	
							<form class="signin-form" runat="server">
			      		<div class="form-group mt-3">
			      			<input type="text" class="form-control" id="title" required runat="server">
			      			<label class="form-control-placeholder" for="title">Title</label>
			      		</div>
						<div class="form-group">
		              <input id="desc" type="text" class="form-control" required runat="server"/>
		              <label class="form-control-placeholder" for="desc">Description</label>
		             
		            </div>
					<div class="mb-3">
                            <label for="tdate" class="form-label">Date</label>
                            <input type="date" class="form-control" id="tdate" runat="server" />
                       </div>
								   <center><div style=" font-weight:700">
                <asp:Label ID="label1" runat="server" Text=""></asp:Label>
                <br />
                </div> </center>
					  
					
					<div class="form-group">
						
                        <asp:Button ID="AddBtn" runat="server" Text="Add Task" class="form-control btn btn-primary rounded submit px-3" OnClick="AddBtn_Click"   />
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

