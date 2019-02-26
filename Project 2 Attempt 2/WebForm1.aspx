<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Project_2_Attempt_2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Addition Calculator</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <h3 class="auto-style12">
                <span class="auto-style11"><strong><span class="auto-style13">Simple Addition Calculator</span></strong></span><strong><br class="auto-style14" />
                </strong>
            </h3>
            <div class="jumbotron">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8 w-25"><strong>X:</strong></td>
                        <td class="auto-style4 w-25">
                            <asp:TextBox ID="input_numberX" runat="server" OnTextChanged="input_numberX_TextChanged"></asp:TextBox>
                        </td>
                        <td class="auto-style3 w-50">
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="input_numberX" ErrorMessage="Please enter a whole number between 0 and 9999" ForeColor="Red" MaximumValue="9999" MinimumValue="0" Type="Integer" Font-Size="Small"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15 w-25"><strong>Y:</strong></td>
                        <td class="auto-style16 w-25">
                            <asp:TextBox ID="input_numberY" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style17 w-50">
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="input_numberY" ErrorMessage="Please enter a whole number between 0 and 9999" ForeColor="Red" MaximumValue="9999" MinimumValue="0" Font-Size="Small" Type="Integer"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10 w-25"><strong>Name:</strong></td>
                        <td class="auto-style5 w-25">
                            <asp:TextBox ID="input_name" runat="server"></asp:TextBox>
                        </td>
                        <td class="w-50">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="input_name" ErrorMessage="Please enter your name" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style5">
                            <asp:Button ID="Button_Submit" runat="server" OnClick="Button1_Click" Text="Submit" class="btn btn-primary" />
                            <asp:Button ID="Button_Clear" runat="server" OnClick="Button2_Click" Text="Clear" class="btn btn-danger" CausesValidation="False"/>
                        </td>
                        <td>
                            <asp:Panel ID="Panel1" runat="server">
                                <div class="text-left">
                                    <asp:Label ID="label_results" runat="server" CssClass="auto-style18"></asp:Label>
                                </div>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </div>
            
        </form>
    </div>
</body>
</html>
