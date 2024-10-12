<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminFeedback.aspx.cs" Inherits="ECommerceProject.AdminFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }

        .email-panel .grid-container {
            display: grid;
            grid-template-columns: 1fr 3fr;
            grid-gap: 10px;
            padding: 20px;
        }

        .email-panel label {
            text-align: right;
            padding-right: 10px;
        }

        .email-panel .submit-btn {
            grid-column: 2 / 3;
            justify-self: start;
        }

        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 181px;
        }
        .auto-style4 {
            height: 26px;
            width: 181px;
        }
        .auto-style5 {
            width: 181px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style8 {
            width: 181px;
            height: 34px;
        }
        .auto-style9 {
            height: 34px;
        }
        .auto-style10 {
            height: 34px;
            width: 525px;
        }
        .auto-style11 {
            width: 525px;
        }
        .auto-style12 {
            height: 26px;
            width: 525px;
        }
        .auto-style13 {
            height: 30px;
            width: 525px;
        }

    </style>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="row">
            <div class="card" style="width: 900px; margin: 15px auto;">
                <table class="w-100">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<strong><asp:Label ID="Label2" runat="server" CssClass="auto-style1" Text="User Feedback"></asp:Label>
                        </strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" HorizontalAlign="Center" Width="709px" DataKeyNames="feedback_Id" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:TemplateField HeaderText="Number">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("feedback_Id") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Email">
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Message">
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("feedback_message") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Replay">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CommandArgument='<%# Eval("feedback_Id") %>' OnCommand="LinkButton1_Command" CausesValidation="False">Replay</asp:LinkButton>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
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
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Panel ID="Panel1" runat="server" Visible="False" CssClass="email-panel" BackColor="#CCCCFF" Width="867px">
                             <div>

                                 <table class="w-100">
                                     <tr>
                                         <td class="auto-style8" style="background-color:dimgray">  &nbsp;&nbsp;&nbsp;
                                             <asp:Image ID="Image1" runat="server" Height="23px" ImageUrl="~/TempImage/gmail.png" Width="36px" />
                                             &nbsp;
                                             <asp:Label ID="Label10" runat="server" Text="G-Mail" ForeColor="White"></asp:Label>
                                         </td>
                                         <td class="auto-style9" style="background-color:dimgray"></td>
                                         <td style="background-color:dimgray" class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:Button ID="btnpanel" runat="server" Font-Bold="True" Height="28px" OnClick="btnpanel_Click" Text="X" Width="26px" CausesValidation="False" />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style8">&nbsp;</td>
                                         <td class="auto-style9">&nbsp;</td>
                                         <td class="auto-style10">&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style8">&nbsp;</td>
                                         <td class="auto-style9">
                                             <asp:Label ID="Label11" runat="server" Text="Message"></asp:Label>
                                         </td>
                                         <td class="auto-style10">
                                             <asp:TextBox ID="txtmessage" runat="server" Height="51px" ReadOnly="True" TextMode="MultiLine" Width="429px"></asp:TextBox>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style8">&nbsp;</td>
                                         <td class="auto-style9">&nbsp;</td>
                                         <td class="auto-style10">&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style3">&nbsp;</td>
                                         <td>
                                             <asp:Label ID="Label7" runat="server" Text="To"></asp:Label>
                                         </td>
                                         <td class="auto-style11">
                                             <asp:TextBox ID="txtto" runat="server" ReadOnly="True" Width="429px"></asp:TextBox>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style3">&nbsp;</td>
                                         <td>&nbsp;</td>
                                         <td class="auto-style11">&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style4"> </td>
                                         <td class="auto-style2">
                                             <asp:Label ID="Label8" runat="server" Text="Subject"></asp:Label>
                                         </td>
                                         <td class="auto-style12">
                                             <asp:TextBox ID="txtSubject" runat="server" Width="429px"></asp:TextBox>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style3">&nbsp;</td>
                                         <td>&nbsp;</td>
                                         <td class="auto-style11">&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style3"> &nbsp;</td>
                                         <td>
                                             <asp:Label ID="Label9" runat="server" Text="Body"></asp:Label>
                                         </td>
                                         <td class="auto-style11">                                     <asp:TextBox ID="txtBody" runat="server" Height="68px" TextMode="MultiLine" Width="429px"></asp:TextBox>
                                            <br /> <asp:RequiredFieldValidator ID="rfvbodygmail" runat="server" ErrorMessage="Please Enter Message" ControlToValidate="txtBody" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style3">&nbsp;</td>
                                         <td>&nbsp;</td>
                                         <td class="auto-style11">&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style5"></td>
                                         <td class="auto-style6"></td>
                                         <td class="auto-style13"> <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="submit-btn" OnClick="btnSubmit_Click" class="btn btn-secondary"/></td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style3">&nbsp;</td>
                                         <td>&nbsp;</td>
                                         <td class="auto-style11">&nbsp;</td>
                                     </tr>
                                 </table>

                             </div>
                         </asp:Panel>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
