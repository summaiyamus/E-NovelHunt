<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ENovelHunt.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title">Sign Up</h2>
                        <form id="form1" runat="server">
                        <div class="form-group">
                            <label for="firstName">First Name:</label>
                                                            <div class="box">

                            <asp:TextBox ID="firstnametext" runat="server" CssClass="form-control"></asp:TextBox>
                        </div></div>
                        <div class="form-group">
                            <label for="lastName">Last Name:</label>
                                                            <div class="box">

                            <asp:TextBox ID="lastnametext" runat="server" CssClass="form-control"></asp:TextBox>
                       </div> </div>
                        <div class="form-group box">
                            <label for="gender">Gender:</label>
                            <asp:DropDownList ID="gender" runat="server" CssClass="form-control" >
                                <asp:ListItem Value="">Select</asp:ListItem>
                                <asp:ListItem Value="male">Male</asp:ListItem>
                                <asp:ListItem Value="female">Female</asp:ListItem>
                                <asp:ListItem Value="other">Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label for="username">Username:</label>
                                                            <div class="box">

                            <asp:TextBox ID="username" runat="server" CssClass="form-control"></asp:TextBox>
                        </div></div>
                             <div>
                                    <asp:Label ID="Error" runat="server" ></asp:Label>
                                </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                                                            <div class="box">

                            <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                       </div> </div>
                        <br />
                        <div class="form-group signup-btn">
                            <asp:Button ID="signupbtn" class="btn btn-success btn-block" runat="server"  CssClass="form-control" Text="Signup" OnClick="Button1_Click" />
                        </div>
                       </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
