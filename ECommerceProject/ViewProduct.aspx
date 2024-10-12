<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="ECommerceProject.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 24px;
        }
        .auto-style4 {
            height: 30px;
            text-align: center;
            width: 174px;
        }
        .auto-style5 {
            height: 29px;
            text-align: center;
            width: 174px;
        }
        .auto-style6 {
            height: 29px;
            width: 174px;
        }
        .auto-style7 {
            width: 174px;
        }
        .zoom:hover {
            transform: scale(1.1);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <table class="w-100" style="text-align:center">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" CellPadding="30" RepeatColumns="5" RepeatDirection="Horizontal" HorizontalAlign="Left" >
                    <ItemTemplate>
                        <asp:Panel ID="Panel1" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Height="339px" Width="195px" class="zoom">
                            <table class="w-100">
                                <tr>
                                    <td class="auto-style7">
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="195px" Width="192px" CommandArgument='<%# Eval("Product_id") %>' ImageUrl='<%# Eval("Product_Image") %>' OnCommand="ImageButton1_Command" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_Name") %>' ></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Product_Description") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6"><strong>
                                        <asp:Label ID="Label4" runat="server" Text="₹  "></asp:Label>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Product_Price") %>'></asp:Label>
                                        </strong></td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>
