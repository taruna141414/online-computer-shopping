<%@ Page Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="Adminproduct.aspx.cs" Inherits="product" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 47px;
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
        <td colspan="6" rowspan="6">
            <table align="center" class="style1" 
                style="height: 480px; width: 67%; margin-left: 333px;">
                <tr>
                    <td colspan="4" style="text-align: left" class="style5">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" style="text-align: left" Text="Product" 
                            Font-Bold="True" Font-Names="cambria" Font-Size="X-Large" 
                            ForeColor="#990000"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblmsg" runat="server" ForeColor="#990000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="CompanyId" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="txtcmpid" runat="server" Height="21px" Width="147px" 
                            onselectedindexchanged="txtcmpid_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="CompanyName" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcmpname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="ProductId" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtprdid" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtprdid" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtprdid" ErrorMessage="plz enter number" 
                            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="ProductName" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtprdname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtprdname" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Price" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtprice" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="txtprice" ErrorMessage="plz enter number" 
                            ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Stock" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkstock" runat="server" Text="In Stock ?" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Description" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtdesc" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtdesc" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ControlToValidate="txtdesc" ErrorMessage="plz enter string" 
                            ValidationExpression="[A-Z a-z]*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Image" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                            ControlToValidate="FileUpload1" ErrorMessage="Not Proper Image Format" 
                            
                            ValidationExpression="^.*\.((j|J)(p|P)(e|E)?(g|G)|(g|G)(i|I)(f|F)|(p|P)(n|N)(g|G)|(b|B)(m|M)(p|P))$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="btn_add" runat="server" style="text-align: center" Text="Add" 
                            onclick="btn_add_Click" Width="70px" BorderColor="#009900" 
                            BorderStyle="Outset" Font-Bold="True" Font-Size="Medium" 
                            ForeColor="#990000" />
                    </td>
                    <td style="text-align: left">
                        <asp:Button ID="btn_update" runat="server" style="text-align: center" 
                            Text="Update" onclick="btn_update_Click" 
                            PostBackUrl="~/AdminProductUpdate.aspx" BorderColor="#009900" 
                            BorderStyle="Outset" Font-Bold="True" Font-Size="Medium" ForeColor="#990000" 
                            Width="70px" CausesValidation="False" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="btn_delete" runat="server" style="text-align: center" 
                            Text="Delete" onclick="btn_delete_Click" 
                            PostBackUrl="~/AdminProductDelete.aspx" BorderColor="#009900" 
                            BorderStyle="Outset" Font-Bold="True" Font-Size="Medium" 
                            ForeColor="#990000" CausesValidation="False" Width="70px" />
                    </td>
                    <td>
                        <asp:Button ID="btn_cancel" runat="server" style="text-align: center" 
                            Text="Cancel" onclick="btn_cancel_Click" CausesValidation="False" 
                            BorderColor="#009900" BorderStyle="Outset" Font-Bold="True" Font-Size="Medium" 
                            ForeColor="#990000" Width="70px" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" BorderColor="#009900" 
                            BorderStyle="Outset" Font-Bold="True" Font-Size="Medium" ForeColor="#990000" 
                            Height="29px" Text="Product Description" Width="178px" 
                            PostBackUrl="~/AdminProductDesc.aspx" CausesValidation="False" 
                            onclick="Button1_Click" />
&nbsp;
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
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
    </tr>
</table>
</asp:Content>

