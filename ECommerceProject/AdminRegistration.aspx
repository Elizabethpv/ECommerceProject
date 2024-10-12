<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="ECommerceProject.AdminRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 33px;
        }
        .auto-style2 {
            width: 88px;
            height: 26px;
        }
        .auto-style3 {
            width: 120px;
            height: 26px;
        }
        .auto-style4 {
            width: 279px;
        }
        .auto-style5 {
            width: 279px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container mt-3" style="height: 1402px">
        <div class="card" >
            <div class="card-body">
                <div class="row align-items-center">
                    <div class="col-md-6 text-center">
                        <h3 style="text-align:left"><b>Look like you're new to the admin role</b></h3>
                        <h6 style="text-align:left">Register with your information to get started</h6>
                        <img src="TempImage/admin1.jpeg" class="img-fluid" alt="Registration Image">
                    </div>
                    <div class="col-md-6">
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
                                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1">
                                        <asp:TextBox ID="txtname" runat="server" Width="332px" Font-Names="Arial"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfdname" runat="server" ErrorMessage="Name is required." ControlToValidate="txtname" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
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
                                        <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1">
                                        <asp:TextBox ID="txtEmail" runat="server" Width="336px" Font-Names="Arial" TextMode="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfdEmail" runat="server" ErrorMessage="Address is required." ControlToValidate="txtaddress" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style5"></td>
                                    <td class="auto-style3"></td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label5" runat="server" Text="Phone"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1">
                                        <asp:TextBox ID="txtPhone" runat="server" Width="339px" Font-Names="Arial" TextMode="Number"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="rfdphone" runat="server" ErrorMessage="Phone number must be exactly 10 digits." ControlToValidate="txtPhone" Display="Dynamic" ForeColor="#FF3300" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
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
                                        <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4"></td>
                                    <td class="auto-style7">
                                        <asp:TextBox ID="txtaddress" runat="server" Height="29px" TextMode="MultiLine" Width="339px" Font-Names="Arial"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address is required." ControlToValidate="txtaddress" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style8"></td>
                                    <td class="auto-style8"></td>
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
                                        <asp:Label ID="Label8" runat="server" Text="UserName"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1">
                                        <asp:TextBox ID="txtusername" runat="server" Width="344px" Font-Names="Arial"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Username is required." ControlToValidate="txtusername" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
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
                                        <asp:TextBox ID="txtPassword" runat="server" Width="341px" Font-Names="Arial" OnTextChanged="txtPassword_TextChanged"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ErrorMessage="password is required." ControlToValidate="txtPassword" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
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
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1">
                                        <asp:Button ID="btnRegister" runat="server" class="btn btn-primary" Font-Bold="True" ForeColor="White" Height="35px" Text="Register" Width="348px" OnClick="btnRegister_Click"  />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1" >&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1"style="text-align:center;color:blue" ><a href="LoginPage.aspx">Existing User? Login</a></td>
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
