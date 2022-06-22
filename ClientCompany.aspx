<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ClientCompany.aspx.cs" Inherits="ClientCompany" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 89%;
            height: 454px;
            margin-left: 133px;
        }
        .style9
        {
            width: 67px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style8">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9">
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
            <td class="style9">
                &nbsp;</td>
            <td colspan="8" rowspan="8">
                <table class="style8">
                    <tr>
                        <td style="text-align: left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Text="Company" Font-Bold="True" 
                                Font-Size="X-Large" ForeColor="#990000" style="text-align: center"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" 
                                style="text-align: center; margin-left: 0px;" 
                                DataSourceID="SqlDataSource3" CellSpacing="30" 
                                onselectedindexchanged="DataList1_SelectedIndexChanged">
                                <ItemTemplate>
                                    prdid:
                                    <asp:Label ID="prdidLabel" runat="server" Text='<%# Eval("prdid") %>' />
                                    <br />
                                    prdname:
                                    <asp:Label ID="prdnameLabel" runat="server" Text='<%# Eval("prdname") %>' />
                                    <br />
                                    price:
                                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                    <br />
                                    stock:
                                    <asp:Label ID="stockLabel" runat="server" Text='<%# Eval("stock") %>' />
                                    <br />
                                    des:
                                    <asp:Label ID="desLabel" runat="server" Text='<%# Eval("des") %>' />
                                    <br />
                                    image:
                                    <asp:Image runat="server" ImageUrl='<%# Eval("image") %>' Width="150" Height="90" />
                                   <%-- <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />--%>
                                    <br />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Database2005ConnectionString %>" 
                                SelectCommand="SELECT * FROM [accessories]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Database2005ConnectionString %>" 
                                ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
                                SelectCommand="SELECT * FROM [accessories]"></asp:SqlDataSource>
                           <%-- <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                                ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
                                SelectCommand="SELECT * FROM [accessories]"></asp:SqlDataSource>--%>
                            <%--<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                                ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
                                SelectCommand="SELECT * FROM [accessories]"></asp:SqlDataSource>--%>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                                ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
                                SelectCommand="SELECT * FROM [accessories]"></asp:SqlDataSource>
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
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [company]" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>"></asp:SqlDataSource>
            </td>
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
            <td class="style9">
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

