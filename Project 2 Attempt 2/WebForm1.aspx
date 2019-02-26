<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Project_2_Attempt_2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Addition Calculator</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="row section_top" align="center">
            <img src="images/Project-2-Logo.jpg" alt="addition sign" class="logo"></img>
            <h3>
                <strong>Simple Addition Calculator</strong>
            </h3>
        </div>
        
        <form id="form1" runat="server" class="form-group">
            <div class="jumbotron">
                <table class="w-100">
                    <tr>
                        <td class="w-25" align="right"><strong>Name:</strong></td>
                        <td class="auto-style5 w-25">
                            <asp:TextBox ID="input_name" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td class="w-25">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="input_name" ErrorMessage="Please enter your name" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="w-25" align="right"><strong>X:</strong></td>
                        <td class="auto-style4 w-25">
                            <asp:TextBox ID="input_numberX" runat="server" OnTextChanged="input_numberX_TextChanged" class="form-control"></asp:TextBox>
                        </td>
                        <td class="auto-style3 w-25">
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="input_numberX" ErrorMessage="Please enter a whole number between 0 and 9999" ForeColor="Red" MaximumValue="9999" MinimumValue="0" Type="Integer" Font-Size="Small"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="w-25" align="right"><strong>Y:</strong></td>
                        <td class="auto-style16 w-25">
                            <asp:TextBox ID="input_numberY" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td class="auto-style17 w-25">
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="input_numberY" ErrorMessage="Please enter a whole number between 0 and 9999" ForeColor="Red" MaximumValue="9999" MinimumValue="0" Font-Size="Small" Type="Integer"></asp:RangeValidator>
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
