<%@ Page Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="AdminCompany.aspx.cs" Inherits="Company" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 26px;
        }
        .style6
        {
            height: 50px;
        }
        .style7
        {
            width: 221px;
        }
        .style8
        {
            height: 26px;
            width: 221px;
        }
        .style9
        {
            height: 50px;
            width: 221px;
        }
        .style10
        {
            width: 135px;
        }
        .style11
        {
            height: 26px;
            width: 135px;
        }
        .style12
        {
            height: 50px;
            width: 135px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="4" rowspan="4">
                <table align="center" class="style1" 
                    style="height: 304px; width: 80%; margin-left: 280px;">
                    <tr>
                        <td colspan="4" style="text-align: left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Text="Company" Font-Bold="True" 
                                Font-Names="Cambria" Font-Size="X-Large" ForeColor="#990000"></asp:Label>
                            &nbsp;<br />
                            <asp:Label ID="lblmsg" runat="server" ForeColor="#990000"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <asp:Label ID="Label2" runat="server" Text="Company Id" Font-Bold="True" 
                                Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <asp:Label ID="Label3" runat="server" Text="Company Name" Font-Bold="True" 
                                Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td class="style8">
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                        </td>
                        <td class="style5">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtname" ErrorMessage="Should not be blank"></asp:RequiredFieldValidator><br/>
                        
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtname" ErrorMessage="plz enter string" 
                                ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <asp:Label ID="Label5" runat="server" Text="Image" Font-Bold="True" 
                                Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                            ControlToValidate="FileUpload1" ErrorMessage="Not Proper Image Format" 
                            
                            ValidationExpression="^.*\.((j|J)(p|P)(e|E)?(g|G)|(g|G)(i|I)(f|F)|(p|P)(n|N)(g|G)|(b|B)(m|M)(p|P))$"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="style12">
                            <asp:Button ID="btn_add" runat="server" onclick="btn_add_Click" Text="Add" 
                                Width="77px" BorderColor="#009900" BorderStyle="Outset" Font-Bold="True" 
                                Font-Italic="False" Font-Size="Medium" ForeColor="#990000" />
                        </td>
                        <td class="style9">
                            <asp:Button ID="btn_update" runat="server" onclick="btn_update_Click" 
                                Text="Update" BorderColor="#009900" BorderStyle="Outset" Font-Bold="True" 
                                Font-Italic="False" Font-Size="Medium" ForeColor="#990000" 
                                PostBackUrl="~/AdminCompanyUpdate.aspx" CausesValidation="False" />
                        </td>
                        <td class="style6">
                        </td>
                        <td class="style6">
                        </td>
                    </tr>
                    <tr>
                        <%--<td>
                            <asp:Button ID="btn_delete" runat="server" Text="Delete" BorderColor="#009900" 
                                BorderStyle="Outset" Font-Bold="True" Font-Italic="False" Font-Size="Medium" 
                                ForeColor="#990000" PostBackUrl="~/AdminCompanyDelete.aspx" 
                                onclick="btn_delete_Click1" />
                        </td>--%>
                        <td class="style10">
                            <asp:Button ID="btn_cancel" runat="server" onclick="btn_cancel_Click" 
                                Text="Cancel" BorderColor="#009900" BorderStyle="Outset" Font-Bold="True" 
                                Font-Italic="False" Font-Size="Medium" ForeColor="#990000" 
                                CausesValidation="False" />
                        </td>
                        <td class="style7">
                            <asp:Button ID="btn_delete" runat="server" BorderColor="#009900" 
                                BorderStyle="Outset" Font-Bold="True" Font-Size="Medium" ForeColor="#990000" 
                                onclick="btn_delete_Click1" 
                                Text="Delete" Width="84px" CausesValidation="False" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

