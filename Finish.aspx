<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Finish.aspx.cs" Inherits="Finish" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
            height: 421px;
            margin-left: 23px;
        }
        .style9
        {
            width: 120px;
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
            <td colspan="8" rowspan="10">
                <table class="style8">
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" 
                                Font-Names="Calibri" Font-Size="XX-Large" ForeColor="#990000" 
                                Text="Customer Details"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                ForeColor="#0099FF" Width="700px" >
                                <Columns>
                                    <asp:BoundField DataField="fname" HeaderText="First Name" />
                                    <asp:BoundField DataField="lnam" HeaderText="Last Name" />
                                    <asp:BoundField DataField="emailid" HeaderText="Email " />
                                    <asp:BoundField DataField="username" HeaderText="User Name" />
                                    <asp:BoundField DataField="address" HeaderText="Address" />
                                    <asp:BoundField DataField="mobileno" HeaderText="Mobile No" />
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Cambria" 
                                Font-Size="XX-Large" ForeColor="#990000" Text="Shopping Details"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                ForeColor="#0099FF" Height="128px" Width="753px">
                                <Columns>
                                    <asp:BoundField DataField="proname" HeaderText="Product Name" />
                                    <asp:BoundField DataField="price" HeaderText="Price" />
                                    <asp:BoundField DataField="qty" HeaderText="Quantity" />
                                    <asp:BoundField DataField="total" HeaderText="Total" />
                                    <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                                    <ControlStyle Height="70px" Width="70px" />
                                    </asp:ImageField>
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="47px" 
                                ImageUrl="~/images/images.jpg" Width="137px" 
                                onclick="ImageButton1_Click" />
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

