<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ENovelHunt.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
      <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title">Login</h2>
                        <form id="form1" runat="server">
                            <br />
                            <div class="form-group">
                                <label for="username">Username:</label>
                                <div class="box">
                                      <asp:TextBox ID="username" CssClass="form-control"  runat="server"></asp:TextBox>

                                </div>
                               
                            </div>
                            <br />
                            <div class="form-group">
                                <label for="password">Password:</label>
                                <div class="box">
                            <asp:TextBox ID="password" CssClass="form-control" runat="server"></asp:TextBox>

                                </div>
                               
                                <br />
                             </div>

                               <div>
                                    <asp:Label ID="Error" runat="server" ></asp:Label>
                                </div>
                   
                          
                             <div class="form-group">
                                 <div class="login-btn">
                        <asp:Button ID="loginbtn" class="btn btn-primary btn-block" CssClass="form-control" runat="server" Text="Login" OnClick="Button1_Click" />
                       </div>
                                 <br />
                              
                                 <div>
                                     <asp:Label ID="Label1" runat="server" Text="Label">Don't have an acount?</asp:Label>
                                 </div>
                               
                                 <div class="signup-btn">
                        <a href="WebForm1.aspx" class="btn btn-success btn-block">Sign Up</a></div>
                    </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
