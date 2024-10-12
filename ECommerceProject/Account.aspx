<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="ECommerceProject.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            text-align: center;
        }
        .auto-style2 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="row">
    <div class="card" style="width: 900px; margin: 15px auto;">
        <div class="row no-gutters">
            <div class="col-md-6">
                <img src="TempImage/bank.jpg" class="card-img" alt="Bank Image" />
            </div>
            <div class="col-md-6">
                <div class="card-body">
                     <table class="w-100">
                <tr style="background-color:cornsilk">
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr style="background-color:cornsilk">
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr style="background-color:cornsilk">
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Account Name"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drpType" runat="server" Height="21px" Width="175px">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Savings</asp:ListItem>
                            <asp:ListItem>Current</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr style="background-color:cornsilk">
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr style="background-color:cornsilk">
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Account Number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNumber" runat="server" Width="175px" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr style="background-color:cornsilk">
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr style="background-color:cornsilk">
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Amount"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtamount" runat="server" Width="175px" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr style="background-color:cornsilk">
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr style="background-color:cornsilk">
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="175px" class="btn btn-primary" OnClick="btnSubmit_Click"/>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr style="background-color:cornsilk">
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>

                </div>
            </div>
        </div>
        <div>
  <hr style="border: 1px dotted black;">           
            <table class="w-100">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1" colspan="2">If you already have an account, check your bank details</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Account Number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNumberCheck" runat="server" Width="175px" TextMode="Number"></asp:TextBox>
                       <br /> <asp:RequiredFieldValidator ID="rfvnumbercheck" runat="server" ErrorMessage="Please Enter Your Account Number." ControlToValidate="txtNumberCheck" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btncheck" runat="server" OnClick="btncheck_Click" Text="Check" Width="175px" BackColor="#3333CC" Font-Bold="True" ForeColor="White" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="5">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="acc_no" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:TemplateField HeaderText="Account Type">
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("acc_type") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Number">
                                    <ItemTemplate>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("acc_no") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Balance">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtbalanceamount" runat="server" Text='<%# Eval("acc_balance") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("acc_balance") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ButtonType="Image" CancelImageUrl="~/Imagesaction/close.png" EditImageUrl="~/Imagesaction/edit.png" ShowEditButton="True" UpdateImageUrl="~/Imagesaction/check.png">
                                <ControlStyle Height="25px" />
                                </asp:CommandField>
                                <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Imagesaction/disposal.png" ShowDeleteButton="True">
                                <ControlStyle Height="25px" />
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
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><a class="previous" href="Payment.aspx">« Go to Paymenta></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
        </div>
    </div>
</div>
</asp:Content>
