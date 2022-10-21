<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_Page.aspx.cs" Inherits="WAD_Project.Home_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reminder</title>
    <link rel="stylesheet" href=".../Assets/libraries/Bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="../Assets/libraries/Bootstrap/css/style.css" />
	<link rel="stylesheet" href="../Assets/libraries/Bootstrap/css/StyleSheet1.scss" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">


    .container {
        min-width: 992px !important;
    }

    .container {
        max-width: 1140px;
    }
    .container {
        max-width: 960px;
    }
    .container {
        max-width: 720px;
    }
    .container {
        max-width: 540px;
    }

.container {
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}

    *,
    *::before,
    *::after {
        text-shadow: none !important;
        -webkit-box-shadow: none !important;
        box-shadow: none !important;
    }

    *,
*::before,
*::after {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

.justify-content-center {
    -webkit-box-pack: center !important;
    -ms-flex-pack: center !important;
    justify-content: center !important;
}

.row {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
}

.text-center {
    text-align: center !important;
}

.mb-3,
.my-3 {
    margin-bottom: 1rem !important;
}

    .col-md-6 {
        -webkit-box-flex: 0;
        -ms-flex: 0 0 50%;
        flex: 0 0 50%;
        max-width: 50%;
    }

    .col-1, .col-2, .col-3, .col-4, .col-5, .col-6, .col-7, .col-8, .col-9, .col-10, .col-11, .col-12, .col,
.col-auto, .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm,
.col-sm-auto, .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12, .col-md,
.col-md-auto, .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg,
.col-lg-auto, .col-xl-1, .col-xl-2, .col-xl-3, .col-xl-4, .col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8, .col-xl-9, .col-xl-10, .col-xl-11, .col-xl-12, .col-xl,
.col-xl-auto {
    position: relative;
    width: 87%;
    padding-right: 15px;
    padding-left: 15px;
}

.heading-section {
    font-size: 28px;
    color: #000;
}

h1, h2, h3, h4, h5,
.h1, .h2, .h3, .h4, .h5 {
    line-height: 1.5;
    font-weight: 400;
    font-family: "Lato", Arial, sans-serif;
    color: #000;
}

    h2,
    h3 {
        page-break-after: avoid;
    }

    p,
    h2,
    h3 {
        orphans: 3;
        widows: 3;
    }

    h2, .h2 {
    font-size: 2rem;
}

h1, h2, h3, h4, h5, h6,
.h1, .h2, .h3, .h4, .h5, .h6 {
    margin-bottom: 0.5rem;
    font-weight: 500;
    line-height: 1.2;
}

h1, h2, h3, h4, h5, h6 {
    margin-top: 0;
    margin-bottom: 0.5rem;
}

    .col-lg-5 {
        -webkit-box-flex: 0;
        -ms-flex: 0 0 41.66667%;
        flex: 0 0 41.66667%;
        max-width: 41.66667%;
    }

    .col-md-7 {
        -webkit-box-flex: 0;
        -ms-flex: 0 0 58.33333%;
        flex: 0 0 58.33333%;
        max-width: 58.33333%;
            top: 0px;
            left: 0px;
        }

    .wrap {
    width: 100%;
    overflow: hidden;
    background: #fff;
    border-radius: 5px;
    -webkit-box-shadow: 0px 10px 34px -15px rgba(0, 0, 0, 0.24);
    -moz-box-shadow: 0px 10px 34px -15px rgba(0, 0, 0, 0.24);
    box-shadow: 0px 10px 34px -15px rgba(0, 0, 0, 0.24);
}

    .login-wrap {
    position: relative;
}

    .form-group {
    position: relative;
    z-index: 0;
    margin-bottom: 20px !important;
}

    .mt-3,
.my-3 {
    margin-top: 1rem !important;
}

.form-group {
    margin-bottom: 1rem;
}

.form-control {
    height: 48px;
    background: #fff;
    color: #000;
    font-size: 16px;
    border-radius: 5px;
    -webkit-box-shadow: none;
    box-shadow: none;
    border: 1px solid rgba(0, 0, 0, 0.1);
}

    .form-control {
        -webkit-transition: none;
        -o-transition: none;
        transition: none;
    }

.form-control {
    display: block;
    width: 100%;
    height: calc(1.5em + 0.75rem + 2px);
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;
    -webkit-transition: border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
    transition: border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
    -o-transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
}

.form-control-placeholder {
    position: absolute;
    top: 2px;
    padding: 7px 0 0 15px;
    -webkit-transition: all 400ms;
    -o-transition: all 400ms;
    transition: all 400ms;
    opacity: .6;
}

label {
    display: inline-block;
    margin-bottom: 0.5rem;
}

    .btn.btn-primary {
        background: #01d28e !important;
        border: 1px solid #01d28e !important;
        color: #fff !important;
    }

        .btn {
    cursor: pointer;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    font-size: 15px;
    padding: 10px 20px;
}

    .pl-3,
.px-3 {
    padding-left: 1rem !important;
}

.pr-3,
.px-3 {
    padding-right: 1rem !important;
}

.rounded {
    border-radius: 0.25rem !important;
}

.btn-primary {
    color: #fff;
    background-color: #007bff;
    border-color: #007bff;
}

    .btn {
        -webkit-transition: none;
        -o-transition: none;
        transition: none;
    }

.btn {
    display: inline-block;
    font-weight: 400;
    color: #212529;
    text-align: center;
    vertical-align: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-color: transparent;
    border: 1px solid transparent;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: 0.25rem;
    -webkit-transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
    transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
    -o-transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
}

button,
[type="button"],
[type="reset"],
[type="submit"] {
    -webkit-appearance: button;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div  class="container">
                <div class="row">
                    <h1 style="margin-top:30px; margin-left:450px">Tasks </h1>
                    <br />
                    </div>
            <div style="margin-left:750px; margin-top:20px">
            <asp:ListView ID="UserLV" runat="server" DataKeyNames="Id" DataSourceID="user" >
                <AlternatingItemTemplate>
                    
                    <%--username:
                    <asp:Label ID="usenameLabel" runat="server" Text='<%# Eval("usename") %>' />
                    
                    <br />
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    email:
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                    <br />
                    contact_no:
                    <asp:Label ID="contact_noLabel" runat="server" Text='<%# Eval("contact_no") %>' />
                    <br />--%>
<br /></span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                   
                    <%--username:
                    <asp:TextBox ID="usenameTextBox" runat="server" Text='<%# Bind("usename") %>' />
                   
                    <br />--%>
                    <h3>Hello
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' /> !</h3>
                    <br />
                    <%--email:
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                    <br />
                    contact_no:
                    <asp:TextBox ID="contact_noTextBox" runat="server" Text='<%# Bind("contact_no") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />--%>
                    </span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                
                <ItemTemplate>
                    
                    
                    <h3>Hello
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />!</h3>
                    <br />
                    <%--email:
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                    <br />
                    contact_no:
                    <asp:Label ID="contact_noLabel" runat="server" Text='<%# Eval("contact_no") %>' />
                    <br />--%></span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                    </div>
                </LayoutTemplate>
                
            </asp:ListView>
                </div>
            <div style="margin-left:850px;"><asp:Button ID="logoutBtn" runat="server" OnClick="logoutBtn_Click" Text="Logout" /></div>
                </div>


            <asp:SqlDataSource ID="user" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UserDb] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:SessionParameter Name="Id" SessionField="uid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
&nbsp;<asp:DataList ID="TasksDL" runat="server" DataKeyField="Id" DataSourceID="reminder" OnCancelCommand="cancel" OnDeleteCommand="delete" OnEditCommand="edit" OnUpdateCommand="update" Width="1006px">
                
    <EditItemTemplate>
        <center>
                        <div style="margin-left:40%;  color:black;">
                  <div class="card" style="width: 35rem;"> 
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("title") %>'></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("description") %>'></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("date") %>'></asp:TextBox>
                    <br />
                    
                      <center><asp:Button ID="Button1" runat="server" CommandName="update" Text="Edit Task" /></center><br />
                    <center><asp:Button ID="Button2" runat="server" CommandName="cancel" Text="Cancel" /></center>
                      </div>
                            </div>
                        </center>
                </EditItemTemplate>
                <ItemTemplate>
                    <center>
                        <div style="margin-left:40%; color:black;">
                  <div class="card" style="width: 35rem;">            
                    <asp:Label ID="idlabel" runat="server" Text='<%# Eval("Id") %>' Visible="False" />
                    <br />
                    
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                                  <br/>      
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                    
                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                    
                    <br />
                    <center><asp:Button style="width:80px;" ID="EditBtn" runat="server" CommandName="edit" Text="Edit" /></center>
                    <br />
                    <center><asp:Button style="width:80px;" ID="DeleteBtn" runat="server" CommandName="delete" Text="Delete" /></center>
                      <br/>
                      </div>
                            </div>
                        </center>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <asp:SqlDataSource ID="reminder" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ListDb] WHERE ([Uid] = @Uid)" DeleteCommand="DELETE FROM [ListDb] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ListDb] ([title], [description], [date], [Uid]) VALUES (@title, @description, @date, @Uid)" UpdateCommand="UPDATE [ListDb] SET [title] = @title, [description] = @description, [date] = @date, [Uid] = @Uid WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="Uid" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Uid" SessionField="uid" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="Uid" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="addBtn" runat="server" OnClick="addBtn_Click" Text="Add Task" />
    </form>
    <script src="../Assets/libraries/Bootstrap/js/jquery.min.js"></script>
  <script src="../Assets/libraries/Bootstrap/js/popper.js"></script>
  <script src="../Assets/libraries/Bootstrap/js/bootstrap.min.js"></script>
  <script src="../Assets/libraries/Bootstrap/js/main.js"></script>
</body>
</html>
