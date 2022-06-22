<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="thankfeedback.aspx.cs" Inherits="thankfeedback" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 354px">
        <br />
        <asp:Image ID="Image2" runat="server" Height="302px" 
            ImageUrl="~/product/thnx.JPG" Width="558px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" 
            Width="60px" />
    </p>
</asp:Content>

