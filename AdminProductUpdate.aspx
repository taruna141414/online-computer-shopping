<%@ Page Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="AdminProductUpdate.aspx.cs" Inherits="AdminProductUpdate" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 23px;
        }
        .style6
        {
            width: 69px;
        }
        .style7
        {
            height: 23px;
            width: 69px;
        }
        .style8
        {
            text-align: center;
            height: 78px;
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
            <td class="style6">
                &nbsp;</td>
            <td colspan="6" rowspan="6">
                <table class="style1" align="center" 
                    style="height: 238px; width: 90%; margin-left: 121px;">
                    
                   <tr>
                        <td class="style8" style="text-align: left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label" runat="server" Font-Bold="True" 
                                Font-Names="Cambria" Font-Size="XX-Large" ForeColor="#990000" 
                                Text=" Update Product" style="text-align: center"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="lblmsg" runat="server" ForeColor="#990000"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                Height="21px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                Width="120px">
                            </asp:DropDownList>
                            <br />
                        </td>
                    </tr> 
                    
                    
                    
                    <tr>
                        <td class="style4">
                            &nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" onrowcancelingedit="GridView1_RowCancelingEdit" 
                                onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" BorderWidth="2px" 
                                Font-Italic="True" Font-Size="Medium" ForeColor="#0080FF" Height="66px" 
                                Width="581px" style="margin-top: 0px">
                                <Columns>
                                    
                                    <asp:TemplateField HeaderText="C_Id">
                                    <ItemTemplate>
                                    <asp:Label ID="lblcmpid" runat="server" Text='<%#Eval("companyid") %>'></asp:Label><br /><br /><br />
                                    </ItemTemplate>
                                    
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="C_Name">
                                    <ItemTemplate>
                                    <asp:Label ID="lblcmpname" runat="server" Text='<%#Eval("companyname") %>'></asp:Label><br /><br /><br />
                                    </ItemTemplate>
                                    
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="P_Id">
                                    <ItemTemplate>
                                    <asp:Label ID="lblprdid" runat="server" Text='<%#Eval("proid") %>'></asp:Label><br /><br /><br />
                                    </ItemTemplate>
                                    
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="P_Name">
                                    <ItemTemplate>
                                    <asp:Label ID="lblprdname" runat="server" Text='<%#Eval("proname") %>'></asp:Label><br /><br /><br />
                                    </ItemTemplate>
                                    
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Price">
                                    <ItemTemplate>
                                    <asp:TextBox ID="txtprice"  Width="80" runat="server" MaxLength="5" Text='<%#Eval("price") %>'></asp:TextBox><br />
                                    <asp:RequiredFieldValidator ID="req1" runat="server" ControlToValidate="txtprice" ErrorMessage="Reqiured" Font-Size="Small"></asp:RequiredFieldValidator><br />
                                    <asp:RegularExpressionValidator ID="reg1" runat="server" ErrorMessage="Only Number" ControlToValidate="txtprice" ValidationExpression="[0-9]*" Font-Size="Small"></asp:RegularExpressionValidator>
                                    </ItemTemplate>
                                    
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Stock">
                                    <ItemTemplate>
                                    <asp:CheckBox ID="chkstock" runat="server" Checked='<%#Eval("stock")%>' /><br /><br /><br />
                                    </ItemTemplate>
                                    
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Description">
                                    <ItemTemplate>
                                    <asp:TextBox ID="txtdesc" Width="80" runat="server" Text='<%#Eval("des") %>'></asp:TextBox><br/><br />
                                    <asp:RequiredFieldValidator ID="req2" runat="server" ControlToValidate="txtdesc" ErrorMessage="Reqiured" Font-Size="Small"></asp:RequiredFieldValidator><br />
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
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
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
            <td class="style5">
                </td>
            <td class="style5">
                </td>
            <td class="style7">
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
            <td class="style6">
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

