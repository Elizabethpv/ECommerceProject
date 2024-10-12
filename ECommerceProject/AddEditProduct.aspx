<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddEditProduct.aspx.cs" Inherits="ECommerceProject.AddEditProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }

        .auto-style12 {
            margin-left: 0px;
        }

        .auto-style18 {
            width: 145px;
        }

        .auto-style19 {
            font-size: x-large;
        }

        .auto-style20 {
            width: 123%;
            height: 398px;
        }

        .shadow-panel {
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        .auto-style22 {
            height: 52px;
            width: 145px;
        }

        .auto-style23 {
            height: 52px;
        }
        .auto-style24 {
            width: 32px;
        }
        .auto-style25 {
            height: 23px;
            width: 32px;
        }
        .auto-style30 {
            width: 145px;
            height: 43px;
        }
        .auto-style31 {
            height: 43px;
        }
        .auto-style32 {
            width: 145px;
            height: 9px;
        }
        .auto-style33 {
            height: 9px;
        }
        .auto-style34 {
            height: 51px;
            width: 145px;
        }
        .auto-style35 {
            height: 51px;
        }
        .auto-style36 {
            height: 58px;
            width: 145px;
        }
        .auto-style37 {
            height: 58px;
        }
        .auto-style38 {
            height: 62px;
            width: 145px;
        }
        .auto-style39 {
            height: 62px;
        }
        .auto-style40 {
            height: 66px;
            width: 145px;
        }
        .auto-style41 {
            height: 66px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <a href="AdminHome.aspx" class="previous">&laquo; Previous</a>
    <table class="w-100">
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td colspan="3" rowspan="4">
                <asp:Panel ID="Panel1" runat="server" BorderColor="White" BorderStyle="None" CssClass="auto-style12" Width="591px" class="shadow-panel" Height="446px">
                    <table class="auto-style20">
                        <tr>
                            <td class="auto-style19" colspan="2"><strong>ADD PRODUCT</strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style32"></td>
                            <td class="auto-style33"></td>
                        </tr>
                        <tr>
                            <td class="auto-style34">
                                <asp:Label ID="Label1" runat="server" Text="Category Name"></asp:Label>
                            </td>
                            <td class="auto-style35">
                                <asp:DropDownList ID="drpCategory" runat="server" Height="22px" Width="270px">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                                <br /><asp:RequiredFieldValidator ID="rfdcategory" runat="server" ErrorMessage="Select category Name is required" ControlToValidate="drpCategory" Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style22">
                                <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
                            </td>
                            <td class="auto-style23">
                                <asp:TextBox ID="txtName" runat="server" Width="270px"></asp:TextBox>
                                <br /><asp:RequiredFieldValidator ID="rfdname" runat="server" ErrorMessage="Product Name is required" ControlToValidate="txtName" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style36">
                                <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
                            </td>
                            <td class="auto-style37">
                                <asp:TextBox ID="txtDescription" runat="server" Width="270px" TextMode="MultiLine"></asp:TextBox>
                                <br /><asp:RequiredFieldValidator ID="rfvdescription" runat="server" ErrorMessage="Product Decsription is required" ControlToValidate="txtDescription" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style38">
                                <asp:Label ID="Label6" runat="server" Text="Price"></asp:Label>
                            </td>
                            <td class="auto-style39">
                                <asp:TextBox ID="txtPrice" runat="server" TextMode="Number" Width="270px"></asp:TextBox>
                                <br /><asp:RequiredFieldValidator ID="rfvprice" runat="server" ErrorMessage="Price  is required" ControlToValidate="txtPrice" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style40">
                                <asp:Label ID="Label4" runat="server" Text="Image"></asp:Label>
                            </td>
                            <td class="auto-style41">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <br /><asp:RequiredFieldValidator ID="rfvfileupload" runat="server" ErrorMessage="Please select a image to upload." ControlToValidate="FileUpload1" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style30">
                                <asp:Label ID="Label5" runat="server" Text="Stock"></asp:Label>
                            </td>
                            <td class="auto-style31">
                                <asp:TextBox ID="txtStock" runat="server" Width="270px" TextMode="Number"></asp:TextBox>
                                <br /><asp:RequiredFieldValidator ID="rfvstock" runat="server" ErrorMessage="Stock is required" ControlToValidate="txtStock" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;</td>
                            <td>
                                <asp:Button runat="server" Text="Add Product" Width="278px" class="btn btn-primary" ID="BtnProduct" OnClick="BtnProduct_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
                <td colspan="3" rowspan="4"><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Product_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="497px" ForeColor="#333333" GridLines="None" HorizontalAlign="Left" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Category ID">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Catgory_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Product Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtNameEdit" runat="server" Text='<%# Eval("Product_Name") %>' Height="25px" Width="169px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Product_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDescriptionEdit" runat="server" Text='<%# Eval("Product_Description") %>' Height="47px" Width="169px" TextMode="MultiLine"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("Product_Description") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtProductPrice" runat="server" Text='<%# Eval("Product_Price") %>' TextMode="Number" Height="24px" Width="96px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("Product_Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Image">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUploadedits" runat="server" Height="23px" Width="237px" />
                                <asp:Image ID="imgPreview" runat="server" ImageUrl='<%# Eval("Product_Image") %>' Width="100px" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="77px" ImageUrl='<%# Eval("Product_Image") %>' Width="101px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Stock">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtStockEdit" runat="server" Text='<%# Eval("Product_Stock") %>' TextMode="Number" Height="25px" Width="96px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("Product_Stock") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtStatusEdit" runat="server" Text='<%# Eval("Product_Status") %>' Height="25px" Width="169px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("Product_Status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Image" CancelImageUrl="~/Imagesaction/close.png" EditImageUrl="~/Imagesaction/edit.png" ShowEditButton="True" UpdateImageUrl="~/Imagesaction/check.png" CausesValidation="False">
                            <ControlStyle Height="20px" />
                        </asp:CommandField>
                        <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Imagesaction/disposal.png" ShowDeleteButton="True">
                            <ControlStyle Height="20px" />
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
