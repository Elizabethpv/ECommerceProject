<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddEditCategory.aspx.cs" Inherits="ECommerceProject.AddEditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .shadow-panel {
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            width: 58px;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            height: 27px;
        }
        .auto-style5 {
            height: 32px;
        }
        .auto-style7 {
            height: 74px;
        }
        .auto-style9 {
            height: 60px;
        }
        .auto-style10 {
            height: 50px;
        }
        .auto-style11 {
            width: 148px;
        }
        .auto-style12 {
            height: 47px;
            width: 125px;
        }
        .auto-style13 {
            height: 88px;
            width: 148px;
        }
        .auto-style14 {
            height: 75px;
            width: 148px;
        }
        .auto-style15 {
            height: 53px;
            width: 148px;
        }
        .auto-style16 {
            height: 53px;
        }
        .auto-style17 {
            height: 88px;
        }
        .auto-style18 {
            height: 75px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a href="AdminHome.aspx" class="previous">&laquo; Previous</a>
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server" BorderColor="White" Height="335px" Width="545px" BackColor="White" Class="shadow-panel" CssClass="auto-style5">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style22"></td>
                            <td class="auto-style11"></td>
                            <td class="auto-style21"></td>
                            <td class="auto-style21"></td>
                            <td class="auto-style21"></td>
                        </tr>
                        <tr>
                            <td class="auto-style10"></td>
                            <td class="auto-style10" colspan="2"><strong><span class="auto-style3">Add Category</span></strong></td>
                            <td class="auto-style10"></td>
                            <td class="auto-style10"></td>
                        </tr>
                        <tr>
                            <td class="auto-style24"></td>
                            <td colspan="2"></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="auto-style16"></td>
                            <td class="auto-style15">
                                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td class="auto-style16">
                                <asp:TextBox ID="txtName" runat="server" Width="265px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfdtxtname" runat="server" ErrorMessage="Category Name is required" ControlToValidate="txtName" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style16"></td>
                            <td class="auto-style16"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style13">
                                <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
                            </td>
                            <td class="auto-style17">
                                <asp:TextBox ID="txtDescription" runat="server" Height="48px" TextMode="MultiLine" Width="272px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvdescription" runat="server" ErrorMessage="Description is required" ControlToValidate="txtDescription" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style17"></td>
                            <td class="auto-style17"></td>
                        </tr>
                        <tr>
                            <td class="auto-style18"></td>
                            <td class="auto-style14">
                                <asp:Label ID="Label3" runat="server" Text="Category Image"></asp:Label>
                            </td>
                            <td class="auto-style18">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <asp:RequiredFieldValidator ID="rfvfile" runat="server" ErrorMessage="Please select a image to upload." ControlToValidate="FileUpload1" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style18"></td>
                            <td class="auto-style18"></td>
                        </tr>
                        <tr>
                            <td class="auto-style31">&nbsp;</td>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style12">
                                <asp:Button ID="btnCategory" runat="server" class="btn btn-primary" OnClick="btnCategory_Click" Text="Add Category" Width="285px" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style31">&nbsp;</td>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style12">
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style31"></td>
                            <td class="auto-style11"></td>
                            <td class="auto-style12"></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="auto-style31">&nbsp;</td>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style12">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style31">&nbsp;</td>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style12">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style31">&nbsp;</td>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style12">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style31">&nbsp;</td>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style12">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style31">&nbsp;</td>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style12">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style4" DataKeyNames="Category_Id" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtNameEdit" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDescriptionEdit" runat="server" Text='<%# Eval("Description") %>' TextMode="MultiLine"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Category Imge">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUploadEdit" runat="server" />
                                <asp:Image ID="imgPreview" runat="server" ImageUrl='<%# Eval("Category_Image") %>' Width="100px" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="124px" ImageUrl='<%# Eval("Category_Image") %>' Width="159px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtStatusEdit" runat="server" Text='<%# Eval("Status") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField></asp:TemplateField>
                        <asp:CommandField ButtonType="Image" CancelImageUrl="~/Imagesaction/close.png" EditImageUrl="~/Imagesaction/edit.png" ShowEditButton="True" UpdateImageUrl="~/Imagesaction/check.png" CausesValidation="False">
                        <ControlStyle Height="20px" />
                        </asp:CommandField>
                        <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Imagesaction/disposal.png" ShowDeleteButton="True">
                        <ControlStyle Height="20px" />
                        <ItemStyle Height="1px" Width="1px" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
