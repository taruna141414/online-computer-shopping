<%@ Page Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="AdminCompanyUpdate.aspx.cs" Inherits="AdminCompanyUpdate" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 2px;
        }
        .style6
        {
            height: 62px;
            width: 830px;
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
            <td colspan="7" rowspan="8">
                <table class="style1" align="center" 
                    style="height: 217px; width: 62%; margin-left: 250px;">
                
                <tr>
                        <td class="style6">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                                Font-Names="Cambria" Font-Size="XX-Large" ForeColor="#990000" 
                                Text=" Update Company" style="text-align: center"></asp:Label>
                            <br />
                            <asp:Label ID="lblmsg" runat="server" ForeColor="#990000"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" 
                                onrowcancelingedit="GridView1_RowCancelingEdit" 
                                onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
                                AutoGenerateColumns="False" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" BorderWidth="2px" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#0080FF" 
                                >
                                <Columns>
                                    <asp:TemplateField HeaderText="Id">
                                    <ItemTemplate>
                                    <asp:Label ID="lblid" runat="server" Text='<%#Eval("id") %>'>'</asp:Label><br /><br />
                                    </ItemTemplate>
                                    
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Company Name">
                                    <ItemTemplate>
                                    <asp:Label ID="lblname" runat="server" Text='<%#Eval("companyname") %>'>'</asp:Label><br /><br />
                                    </ItemTemplate>
                                    
                                    </asp:TemplateField>
                                    
                                    
                                    <asp:TemplateField HeaderText="Company Image">
                                    <ItemTemplate>
                                    <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                            ControlToValidate="FileUpload1" ErrorMessage="Not Proper Image Format"  Font-Size="Small"
                            
                            ValidationExpression="^.*\.((j|J)(p|P)(e|E)?(g|G)|(g|G)(i|I)(f|F)|(p|P)(n|N)(g|G)|(b|B)(m|M)(p|P))$"></asp:RegularExpressionValidator>
                                    
                                    </ItemTemplate>
                                    
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Image">
                                    <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="50" Width="90" ImageUrl='<%#Eval ("image") %>'/>
                                    </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                     <asp:CommandField ShowEditButton="True" />
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
            <td class="style5">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
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

