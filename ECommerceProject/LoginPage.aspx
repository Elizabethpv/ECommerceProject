<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ECommerceProject.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 39px;
        }

        .auto-style4 {
            width: 341px;
        }
        .auto-style5 {
            width: 341px;
            height: 12px;
        }
        .auto-style6 {
            width: 39px;
            height: 12px;
        }
        .auto-style7 {
            height: 12px;
        }
        .auto-style8 {
            width: 341px;
            height: 32px;
        }
        .auto-style9 {
            width: 39px;
            height: 32px;
        }
        .auto-style10 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <div class="container mt-3" style="height: 1402px">--%>
    <div class="container mt-3" style="height: 1000px; width: 1000px">
        <div class="card">
            <div class="card-body">
                <div class="row align-items-center">
                    <div class="col-md-6 text-center">
                        <img src="TempImage/login11.jpeg" class="img-fluid" alt="Registration Image">
                    </div>
                    <div class="col-md-6">
                        <h6 style="font-family: 'Arial Rounded MT'; font-size: xx-large; text-align: left; color: black; padding-left: 100px;margin-top:10px">Login</h6>
                        <h6 style="font-family: 'Arial Rounded MT'; font-size: smaller; text-align: left; color: slategray; padding-left: 100px">Get access to your orders, Wishlist and recommendations</h6>
                        <%-- <h2 style="text-align: center; color:blueviolet;font:oblique">&nbsp;SIGN UP</h2>--%>
                        <div>

                            <table class="w-100">
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label8" runat="server" Text="UserName"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1">
                                        <asp:TextBox ID="txtusername" runat="server" Width="344px"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername"
                                          ErrorMessage="Username is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1">
                                        <asp:TextBox ID="txtpassword" runat="server" Width="341px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfdpassword" runat="server" ErrorMessage="Password is required." ForeColor="Red" ControlToValidate="txtpassword" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style5"></td>
                                    <td class="auto-style6"></td>
                                    <td class="auto-style7"></td>
                                    <td class="auto-style7"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style8"></td>
                                     <td class="auto-style9" style="text-align: center; color: blue;">
                                        <a href="UserRegistration.aspx" style="text-decoration: none; color: blue;font-size:smaller;padding-left:215px">Forget Password </a>
                                    </td>
                                    <td class="auto-style10"></td>
                                    <td class="auto-style10"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style5"></td>
                                     <td class="auto-style6" style="text-align: center; color: blue;">
                                         </td>
                                    <td class="auto-style7"></td>
                                    <td class="auto-style7"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1">
                                        <asp:Button ID="btnlogin" runat="server" class="btn btn-primary" Font-Bold="True" ForeColor="White" Height="35px" Text="Login" Width="348px" OnClick="btnlogin_Click" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1">
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1" style="text-align: center; color: blue;">
                                        <a href="UserRegistration.aspx" style="text-decoration: none; color: blue;">New to ClickMart? Create Account </a>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>


                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
