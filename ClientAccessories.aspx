<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ClientAccessories.aspx.cs" Inherits="ClientAccessories" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
        }
        
        .style10
        {
            width: 253px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style8">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td colspan="9" rowspan="10">
                <table class="style9">
                    <tr>
                        <td class="style6">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Text="Accessories" Font-Bold="True" 
                                Font-Size="X-Large" ForeColor="#990000"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" CellSpacing="15" 
                                DataSourceID="SqlDataSource1" Height="634px" Width="524px">
                                <ItemTemplate>
                                    <asp:Image ID="Image2" runat="server"  Height="150px" Width="150px" ImageUrl='<%#Eval ("image") %>'/>
                                    <br />
                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("prdname") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="Label6" runat="server" Text="In Stock ?"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%#Eval("stock") %>' 
                                        Enabled="False" />
                                    <br />
                                    <asp:Label ID="Label7" runat="server" Text="Description"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label8" runat="server" Text='<%#Eval("des") %>'></asp:Label>
                                    <br />
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                                        ImageUrl="~/images/add to cart button.jpg" onclick="ImageButton1_Click" CommandArgument='<%#Eval("prdid") %>'/>
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [accessories]"></asp:SqlDataSource>
            </td>
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

