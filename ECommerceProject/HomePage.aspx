<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ECommerceProject.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 34px;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            height: 298px;
        }
        .auto-style3 {
            height: 33px;
            text-align: center;
        }
        .zoom:hover {
            transform: scale(1.1);
        }
        .auto-style4 {
            height: 225px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="w3-content w3-section" style="max-width: 10000px">
         <img class="mySlides" src="TempImage/5.jpg" style="width: 100%; height: 300px;">
         <img class="mySlides" src="TempImage/6.jpg" style="width: 100%; height: 300px;">
         <img class="mySlides" src="TempImage/7.jpg" style="width: 100%; height: 300px;">
         <img class="mySlides" src="TempImage/2.jpg" style="width: 100%; height: 300px;">           
    </div>
    <%-----contact----------%>
    <%--<div>
        <h3 style="text-align: center; font-family:'Arial Rounded MT'; font-size: xx-large">New Products</h3>
    </div>--%>
    <%-----order----------%><%-----contact----------%>
    <div>
        <asp:DataList ID="DataList1" runat="server" CellPadding="30" HorizontalAlign="Left" RepeatColumns="5" RepeatDirection="Horizontal">
            <ItemTemplate>
                <asp:Panel ID="productpanel" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Height="309px" class="zoom" Width="203px">
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style4">
                                <asp:ImageButton ID="ImageButtonCategory" runat="server" CommandArgument='<%# Eval("Category_Id") %>' Height="209px" ImageUrl='<%# Eval("Category_Image") %>' Width="200px"   OnCommand="ImageButtonCategory_Command"  />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <strong>
                                <asp:Label ID="Label1" runat="server" BorderStyle="None" Text='<%# Eval("Name") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <h6>
                                    <asp:Label ID="Label2" runat="server" Font-Bold="False" Text='<%# Eval("Description") %>'></asp:Label>
                                </h6>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <%-----order----------%><%-----contact----------%>
    <div style="margin-top:50px">
       <marquee behavior="scroll" direction="left" scrollamount="5" >
         <img src="Homemarquee\d1.png" width="120" height="100" alt="Natural" hspace="50" />
         <img src="Homemarquee\d2.png" width="120" height="100" alt="Natural" hspace="50"/>
         <img src="Homemarquee\d3.png" width="120" height="100" alt="Natural" hspace="50"/>
         <img src="Homemarquee\d4.png" width="120" height="100" alt="Natural" hspace="50"/>
         <img src="Homemarquee\d5.png" width="120" height="100" alt="Natural" hspace="50"/>
         <img src="Homemarquee\d6.png" width="120" height="100" alt="Natural" hspace="50"/>
         <img src="Homemarquee\d7.png" width="120" height="100" alt="Natural" hspace="50"/>
         <img src="Homemarquee\d10.png" width="120" height="100" alt="Natural" hspace="50"/>
         <img src="Homemarquee\d11.png" width="120" height="100" alt="Natural" hspace="50"/>
         </marquee>
     </div>

    <div style="margin-top:30px">
    </div>
<%-----order----------%>
     <div style="align-content:center">
        <img src="Homemarquee\CLICKMAR.png" style="width: 100%; height: 300px;">
    </div>

     <div style="margin-top:30px">
    </div>
<%-----contact----------%>
    <div style="align-content:center">
        <img src="Homemarquee\un1.png" >
    </div>



</asp:Content>
