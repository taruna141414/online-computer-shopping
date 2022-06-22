<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="regi" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 89%;
            height: 790px;
            margin-left: 147px;
        }
        .style11
        {
            height: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style10">
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
            <td colspan="8" rowspan="8">
                <table class="style10" align="center">
                    <tr>
                        <td colspan="4" class="style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                Text="Register" ForeColor="#990000" Font-Names="Cambria"></asp:Label>
                            <br />
                            <asp:Label ID="Label22" runat="server" ForeColor="#990000"></asp:Label>
                            </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="id" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="First Name" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtlname" ErrorMessage="should not be blank"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtlname" ErrorMessage="plz enter text" 
                                ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Last Name" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Gender" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="txtgender" runat="server" Height="21px" Width="147px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Birth Date" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtbdate" runat="server" ontextchanged="txtbdate_TextChanged" 
                                Enabled="False"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" 
                                Height="25px" ImageUrl="~/img/ShareCalendar_for_Outlook-35275.jpg" 
                                onclick="ImageButton1_Click" Width="32px" />
                            <br />
                            
                            </td>
                        <td>
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                                BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                                Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="69px" 
                                onselectionchanged="Calendar1_SelectionChanged1" ShowGridLines="True" 
                                Visible="False" Width="84px">
                                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                <SelectorStyle BackColor="#FFCC66" />
                                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                <OtherMonthDayStyle ForeColor="#CC9966" />
                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                                    ForeColor="#FFFFCC" />
                            </asp:Calendar>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtbdate" ErrorMessage="should not be blank"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Address" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="txtaddress" ErrorMessage="should not be blank"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="City" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtcity" ErrorMessage="should not be blank"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtcity" ErrorMessage="plz enter text" 
                                ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="State" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txtstate" ErrorMessage="should not be blank"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                ControlToValidate="txtstate" ErrorMessage="plz enter text" 
                                ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label11" runat="server" Text="Country" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtcountry" runat="server" ReadOnly="True">India</asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txtcountry" ErrorMessage="should not be blank"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                ControlToValidate="txtcountry" ErrorMessage="plz enter text" 
                                ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text="Mobile No" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtmblno" runat="server" MaxLength="10"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="txtmblno" ErrorMessage="should not be blank"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" 
                                ControlToValidate="txtmblno" ErrorMessage="plz enter Number" 
                                ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text="Email id" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="txtemail" ErrorMessage="should not be blank"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                ControlToValidate="txtemail" ErrorMessage="invalid email address" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label21" runat="server" Text="User Name" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                                ControlToValidate="txtusername" ErrorMessage="should not be blank"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text="Password" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                ControlToValidate="txtpassword" ErrorMessage="should not be blank"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label15" runat="server" Text="Re password" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtrepassword" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                ControlToValidate="txtrepassword" ErrorMessage="should not be blank"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtpassword" ControlToValidate="txtrepassword" 
                                ErrorMessage="password  is not match"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label16" runat="server" Text="Card No" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtcardno" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label17" runat="server" Text="Bank Name" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtbankname" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                ControlToValidate="txtbankname" ErrorMessage="plz enter text" 
                                ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label18" runat="server" Text="Security Ques" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="txtques" runat="server" Height="21px" Width="144px">
                                <asp:ListItem>your favourite book?</asp:ListItem>
                                <asp:ListItem> your favourite teacher?</asp:ListItem>
                                <asp:ListItem> your pat Name?</asp:ListItem>
                                <asp:ListItem> your hobby?</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label19" runat="server" Text="Answer" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Large" ForeColor="#6699FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtanswer" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                ControlToValidate="txtanswer" ErrorMessage="should not be blank"></asp:RequiredFieldValidator>
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
&nbsp;
                            <asp:Button ID="btn_submit" runat="server" BorderColor="#009900" 
                                BorderStyle="Outset" Font-Bold="True" Font-Size="Medium" ForeColor="#990000" 
                                onclick="btn_submit_Click1" Text="Submit" />
                        </td>
                        <td>
&nbsp;<asp:Button ID="btn_cancel" runat="server" BorderColor="#009900" BorderStyle="Outset" 
                                CausesValidation="False" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="#990000" onclick="btn_cancel_Click1" Text="Cancel" />
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
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

