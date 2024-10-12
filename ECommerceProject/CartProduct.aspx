<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CartProduct.aspx.cs" Inherits="ECommerceProject.CartProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 195px;
        }

        .auto-style2 {
            height: 44px;
        }

        .auto-style3 {
            width: 195px;
            height: 31px;
        }

        .auto-style4 {
            height: 31px;
        }

        .minus {
            border-radius: 90px;
        }

        .griddtyle {
            margin: 20px;
            text-align: center;
        }
        .auto-style5 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-8">
            <div>
                <div class="card" style="width: 900px; margin-top: 15px; margin-left: 20px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="griddtyle" DataKeyNames="cart_id" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" Width="800px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="Product">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="107px" ImageUrl='<%# Eval("Product_Image") %>' Width="107px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("Product_Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Decsription">
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("Product_Description") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Quantity">
                                <ItemTemplate>
                                    &nbsp;<asp:TextBox ID="txtQyantitychange" runat="server" Height="22px" Text='<%# Eval("quantity") %>' TextMode="Number" Width="73px" AutoPostBack="True" OnTextChanged="txtQyantitychange_TextChanged1"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("totalPrice") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Imagesaction/remove-from-cart.png" HeaderText="Remove" ShowDeleteButton="True" DeleteText="Remove">
                                <ControlStyle Height="30px" />
                            </asp:CommandField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="container mt-3">
                <asp:Panel ID="Panel1" runat="server">
                    <div class="card" style="width: 400px; margin-right: 30px; margin-bottom: 20px">
                        <div class="card-body">
                            <table class="w-100">
                                <tr>
                                    <td class="auto-style2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;Price details&nbsp;</strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td class="auto-style4">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
                                        <strong>
                                        <asp:Label ID="lbltotal" runat="server"></asp:Label>
                                        </strong>
                                        <asp:Label ID="Label14" runat="server" Text="items"></asp:Label>
                                    </td>
                                    <td class="auto-style4">
                                        <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp; &nbsp;<strong><asp:Label ID="Label6" runat="server" Text="Total Amount"></asp:Label>
                                    </strong></td>
                                    <td><strong>
                                        <asp:Label ID="tblTotal" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnconfirm" runat="server" Text="Confirm" class="btn btn-warning" style="width: 200px" OnClick="btnconfirm_Click"/></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>

                        </div>
                    </div>
                </asp:Panel>
            </div>

        </div>
    </div>
    <div>

        <table class="w-100">
            <tr>
                <td>&nbsp;</td>
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
