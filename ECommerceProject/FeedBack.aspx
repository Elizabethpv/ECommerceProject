<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FeedBack.aspx.cs" Inherits="ECommerceProject.FeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 98px;
        }

        .auto-style2 {
            width: 576px;
        }

        .auto-style3 {
            width: 235px;
        }
        .auto-style4 {
            width: 98px;
            height: 26px;
        }
        .auto-style5 {
            width: 235px;
            height: 26px;
        }
        .auto-style6 {
            width: 576px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 98px;
            height: 38px;
        }
        .auto-style9 {
            width: 235px;
            height: 38px;
        }
        .auto-style10 {
            width: 576px;
            height: 38px;
        }
        .auto-style11 {
            height: 38px;
        }
        .auto-style16 {
            width: 98px;
            height: 52px;
        }
        .auto-style17 {
            width: 235px;
            height: 52px;
        }
        .auto-style18 {
            width: 576px;
            height: 52px;
        }
        .auto-style19 {
            height: 52px;
        }
        .auto-style20 {
            width: 98px;
            height: 3px;
        }
        .auto-style21 {
            width: 235px;
            height: 3px;
        }
        .auto-style22 {
            width: 576px;
            height: 3px;
        }
        .auto-style23 {
            height: 3px;
        }
        .auto-style24 {
            width: 98px;
            height: 47px;
        }
        .auto-style25 {
            width: 235px;
            height: 47px;
        }
        .auto-style26 {
            width: 576px;
            height: 47px;
        }
        .auto-style27 {
            height: 47px;
        }
    </style>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="row">
    <div class="card" style="width: 900px; margin: 15px auto; background-image: url('TempImage/feedback.jpg'); background-size: cover; color: white;">
        <div class="row" style="padding: 20px;">
            <div class="col-md-6">
                <h2 style="color:black;padding-left:50px",><b>FEEDBACK</b></h2>
                <h6 style="color:black;padding-left:50px",>Share your Feedback</h6>
                <img src="TempImage/f3.jpg" class="card-img" alt="feedbackImage" style="width: 100%; height: auto; object-fit: cover;" />
            </div>
            <div class="col-md-6" style="background-color:cornsilk">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8"></td>
                        <td class="auto-style9"></td>
                        <td class="auto-style10">
                            &nbsp;</td>
                        <td class="auto-style11"></td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style17"></td>
                        <td class="auto-style18">
                            <asp:Label ID="Label2" runat="server" Text="Name" ForeColor="Black" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="auto-style19"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4"></td>
                        <td class="auto-style5">
                        &nbsp;
                        </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtName" runat="server" Width="321px" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td class="auto-style7"></td>
                    </tr>
                    <tr>
                        <td class="auto-style20"></td>
                        <td class="auto-style21">
                        </td>
                        <td class="auto-style22">
                        </td>
                        <td class="auto-style23"></td>
                    </tr>
                    <tr>
                        <td class="auto-style24"></td>
                        <td class="auto-style25"></td>
                        <td class="auto-style26">
                            <asp:Label ID="Label3" runat="server" Text="Message  " ForeColor="Black" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="auto-style27"></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style3">
                        &nbsp;
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtmessage" runat="server" Height="110px" TextMode="MultiLine" Width="321px"></asp:TextBox>
                            <br /><asp:RequiredFieldValidator ID="rfdmessgae" runat="server" ErrorMessage="Please share your feedback" ControlToValidate="txtmessage" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="321px" class="btn btn-primary" OnClick="btnSubmit_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>

</asp:Content>
