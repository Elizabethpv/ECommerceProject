<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="ECommerceProject.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 325px;
        }
        .auto-style2 {
            height: 24px;
        }
        .auto-style3 {
            width: 325px;
            height: 24px;
        }
        .auto-style4 {
            width: 208px;
        }
        .auto-style5 {
            height: 24px;
            width: 208px;
        }
        .auto-style6 {
            width: 208px;
            height: 31px;
        }
        .auto-style7 {
            width: 325px;
            height: 31px;
        }
        .auto-style8 {
            height: 31px;
        }
        .auto-style9 {
            width: 208px;
            height: 26px;
        }
        .auto-style10 {
            width: 325px;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-3" style="height: 1402px">
        <div class="card">
            <div class="card-body">
                <div class="row align-items-center">
                    <div class="col-md-6 text-center">
                        <h3 style="text-align:left;margin-top:-30px"><b>Look like you're new here!</b></h3>
                        <h6 style="text-align:left">Register with your information to get started</h6>
                        <img src="TempImage/login22.jpeg" class="img-fluid" alt="Registration Image">
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
                                        <asp:TextBox ID="txtName" runat="server" Width="332px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfdName" runat="server" ErrorMessage="Name is required." ControlToValidate="txtName" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
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
                                        <asp:TextBox ID="txtEmail" runat="server" Width="336px" TextMode="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfdemail" runat="server" ErrorMessage="Email is required." ControlToValidate="txtEmail" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
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
                                        <asp:TextBox ID="txtPhone" runat="server" Width="339px" TextMode="Number"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="revPhone" runat="server" ErrorMessage="Phone number must be exactly 10 digits." ControlToValidate="txtPhone" Display="Dynamic" ValidationExpression="^[6789]\d{9}$" ForeColor="#FF3300"></asp:RegularExpressionValidator>
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
                                    <td class="auto-style6"></td>
                                    <td class="auto-style7">
                                        <asp:TextBox ID="txtAddress" runat="server" Height="29px" TextMode="MultiLine" Width="339px"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address is required." ControlToValidate="txtAddress" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
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
                                        <asp:Label ID="Label7" runat="server" Text="Pincode"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">&nbsp;</td>
                                    <td class="auto-style1">
                                        <asp:TextBox ID="txtPincode" runat="server" Width="337px" TextMode="Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfdpincode" runat="server" ErrorMessage="Pincode is required." ControlToValidate="txtPincode" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
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
                                        <asp:Label ID="Label8" runat="server" Text="UserName"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9"></td>
                                    <td class="auto-style10">
                                        <asp:TextBox ID="txtUsername" runat="server" Width="344px"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="revUserName" runat="server" ErrorMessage="Username is required." ControlToValidate="txtUsername" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style11"></td>
                                    <td class="auto-style11"></td>
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
                                        <asp:TextBox ID="txtPassword" runat="server" Width="341px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="revPassword" runat="server" ErrorMessage="Password is required." ControlToValidate="txtPassword" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
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
                                        <asp:Button ID="btnregister" runat="server" class="btn btn-primary" Font-Bold="True" ForeColor="White" Height="35px" Text="Register" Width="348px" OnClick="btnregister_Click"  />
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
