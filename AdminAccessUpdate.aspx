<%@ Page Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="AdminAccessUpdate.aspx.cs" Inherits="AdminAccessUpdate" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="7" rowspan="8">
                <table class="style1" style="height: 202px; width: 93%; margin-left: 166px">
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label2" runat="server" Text="Update Accessories" 
                                Font-Bold="True" Font-Names="Cambria,X-Large" Font-Size="X-Large" 
                                ForeColor="#990000"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label3" runat="server" ForeColor="#990000"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="color: #0080FF; font-size: larger">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                onrowcancelingedit="GridView1_RowCancelingEdit" 
                                onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating">
                                <Columns>
                                    <asp:TemplateField HeaderText="Id">
                                    <ItemTemplate>
                                    <asp:Label ID="lblid" runat="server" Text='<%#Eval("prdid") %>'></asp:Label><br /><br /><br />
                                    </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="ProductName">
                                     <ItemTemplate>
                                    <asp:Label ID="lblpname" runat="server" Text='<%#Eval("prdname") %>'></asp:Label><br /><br /><br />
                                    </ItemTemplate>
                                   
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Price">
                                     <ItemTemplate>
                                    <asp:TextBox ID="txtprice" runat="server" MaxLength="5" Width="70" Text='<%#Eval("price") %>'></asp:TextBox><br />
                                    <asp:RequiredFieldValidator ID="req1" runat="server" ControlToValidate="txtprice" ErrorMessage="Reqiured" Font-Size="Small"></asp:RequiredFieldValidator><br />
                                    <asp:RegularExpressionValidator ID="reg1" runat="server" ErrorMessage="Only Number" ControlToValidate="txtprice" ValidationExpression="[0-9]*" Font-Size="Small"></asp:RegularExpressionValidator>
                                    </ItemTemplate>
                                   
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Stock">
                                     <ItemTemplate>
                                    <asp:CheckBox ID="chkstock" runat="server" Checked='<%#Eval("stock") %>' /><br /><br /><br />
                                    </ItemTemplate>
                                   
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Desc">
                                    <ItemTemplate>
                                    <asp:TextBox ID="txtdes" runat="server" Width="110"  Text='<%#Eval("des") %>'></asp:TextBox><br /><br />
                                    <asp:RequiredFieldValidator ID="req2" runat="server" ControlToValidate="txtdes" ErrorMessage="Reqiured" Font-Size="Small"></asp:RequiredFieldValidator><br />
                                    </ItemTemplate>
                                   
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Image">
                                    <ItemTemplate>
                                    <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                            ControlToValidate="FileUpload1" ErrorMessage="Not Proper Image Format"  Font-Size="Small"
                            
                            ValidationExpression="^.*\.((j|J)(p|P)(e|E)?(g|G)|(g|G)(i|I)(f|F)|(p|P)(n|N)(g|G)|(b|B)(m|M)(p|P))$"></asp:RegularExpressionValidator>
                                    </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                    <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="50" Width="50" ImageUrl='<%#Eval ("image") %>'/>
                                    </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField ShowEditButton="true" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
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
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

