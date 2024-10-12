<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Paymentsuccess .aspx.cs" Inherits="ECommerceProject.Paymentsuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="display: flex; flex-direction: column; justify-content: center; align-items: center; height: 500px;">
    <img src="TempImage/pay.png" style="width:100px" />
    <h3>Payment Successful</h3>
    <a href="HomePage.aspx" class="btn btn-info" role="button">Confirm</a>
</div>
    <div>
    </div>
</asp:Content>
