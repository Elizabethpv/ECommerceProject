<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SelectProduct.aspx.cs" Inherits="ECommerceProject.SelectProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .button {
            background-color:orange;/*#04AA6D;*/
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            font-size: medium;
        }
        .qtyminus{border-radius:90px;}
        
        .auto-style4 {
            height: 10px;
        }
        .auto-style5 {
            height: 37px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-6" style="align-items:center">
            <asp:Image ID="Image1" runat="server" Height="376px"  Width="404px" style="margin-top:30px;margin-left:50px"/>
            <div style="margin-top:30px;margin-left:60px">
                <asp:Button ID="btnAddCart" runat="server" Text="Add Cart" class="button" style='margin-right:50px' OnClick="btnAddCart_Click"/>
                <asp:Button ID="Button2" runat="server" Text="Continue" class="button" style='margin-right:16px' PostBackUrl="~/HomePage.aspx"/>
            </div>  
            <div style="margin-top:20px"></div>
        </div>
       
        <div class="col-sm-6">
            <div>
                <table class="w-100">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><strong>
                            <asp:Label ID="LblProductName" runat="server" Text="Label" CssClass="auto-style2"></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" BackColor="#99FFCC" Font-Names="Bahnschrift Light" Text="Special Price" CssClass="auto-style1"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Names="Bahnschrift SemiLight SemiConde" ForeColor="#009900" Text="92% off" CssClass="auto-style1"></asp:Label>
                            &nbsp;&nbsp;<asp:Label ID="Label8" runat="server" CssClass="auto-style2" Font-Bold="True" Text="₹"></asp:Label>
&nbsp;<asp:Label ID="lblPrice" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="X-Large" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image2" runat="server" Height="27px" ImageUrl="~/TempImage/fast-delivery.png" Width="27px" />
&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" Font-Names="Bahnschrift Light" ForeColor="#6666FF" Text="Free Delivary" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel ID="Panel1" runat="server" BackColor="#99FFCC" Height="68px" Width="574px">
                                &nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Small" Text="Flat ₹30 off"></asp:Label>
                                <br />
                                &nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label7" runat="server" Font-Names="Bodoni MT" Text="Apply cashback coupon for instant savings"></asp:Label>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblstatusmsg" runat="server" Font-Size="Medium" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <strong>
                            <asp:Label ID="lbDescription" runat="server" Text="Label" CssClass="auto-style3"></asp:Label>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="lblquantity" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp; &nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Qty"></asp:Label>
&nbsp;&nbsp;<asp:Button ID="btnqtyminus" runat="server" CssClass="qtyminus" Text="-" Width="38px" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" OnClick="btnqtyminus_Click" />
                        &nbsp;
                            <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number" Width="62px" style="text-align:center">1</asp:TextBox>
&nbsp; <asp:Button ID="btnqtyplus" runat="server" CssClass="qtyminus" Text="+" Width="38px" BorderColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" OnClick="btnqtyplus_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </div>

        </div>
    </div>
</asp:Content>
