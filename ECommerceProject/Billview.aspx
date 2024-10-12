<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Billview.aspx.cs" Inherits="ECommerceProject.Billview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="card" style="width: 900px; margin-top: 15px; margin-left: 100px; margin-bottom: 15px;">
            <h1 style="font-family: 'Times New Roman', Times, serif; color: dimgray; text-align: center">Order Summary</h1>
            <hr style="border: 1px solid black;">
            <div>
                <h5><b>Date</b></h5>
                &nbsp;&nbsp;
                <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
            </div>
            <br />
            <h5><b>Address</b></h5>
            <div style="padding: 10px; width: 300px;">
                <p>
                    <asp:Label ID="lblname" runat="server" Text="John Doe"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="lbladdress" runat="server" Text="123 Main St, City"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="Label2" runat="server" Text="Mobile Number : "></asp:Label>
                    <asp:Label ID="lblphone" runat="server" Text="(555) 555-5555"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="Label1" runat="server" Text="Pincode : "></asp:Label>
                    <asp:Label ID="lblpincode" runat="server" Text="123456"></asp:Label>
                </p>
            </div>
            <div>

                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Product">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="122px" ImageUrl='<%# Eval("Product_Image") %>' Width="143px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("Product_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Product_Description") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="quantity">
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="price">
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("totalPrice") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
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
            <hr style="border: 1px dotted black;">
            <div style="text-align: right">
                <h5>Grand total</h5>
                <asp:Label ID="lblTotal" runat="server" Text="Label" Font-Bold="True" Font-Size="Large"></asp:Label>
            </div>
            <hr style="border: 1px dotted black;">
            <br />
            <div style="text-align: right">
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#0000CC" OnClick="LinkButton1_Click">Add your account details</asp:LinkButton>
            </div>
            <br />
            <br />
            <div>
                <asp:Panel ID="Panelaccount" runat="server" Visible="false" BorderColor="#E1E1E1" BorderStyle="Outset" BorderWidth="1px" HorizontalAlign="Center" BackColor="#CCCCCC">
                    <h6 style="text-align: center"><b>ACCOUNT DETAILS</b></h6>
                    <br />
                    <br />
                    <table style="width: 100%; max-width: 400px; margin: 0 auto; text-align: left;">
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="Label3" runat="server" Text="Account Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtaccountname" runat="server" Style="width: 100%;" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label4" runat="server" Text="Account Number"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtaccountnumber" runat="server" Style="width: 100%;" TextMode="Number"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="Label5" runat="server" Text="Balance Amount"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtbalence" runat="server" Style="width: 100%;" TextMode="Number"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1"></td>
                            <td>
                                <asp:Button ID="btninsertaccount" runat="server" Text="Submit" class="btn btn-primary" Style="width: 100%;" OnClick="btninsertaccount_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </div>
            <br />
            <div style="text-align: right">
                <asp:Button ID="btnpayment" runat="server" Text="Payment" class="btn btn-warning" Width="219px" PostBackUrl="~/Payment.aspx" />
            </div>
            <br />
            <br />
            <br />


        </div>
    </div>
</asp:Content>
