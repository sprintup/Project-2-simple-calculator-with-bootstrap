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
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style8"><strong>Whole number X:</strong></td>
                        <td class="auto-style4">
                            <asp:TextBox ID="input_numberX" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15"><strong>Whole number Y:</strong></td>
                        <td class="auto-style16">
                            <asp:TextBox ID="input_numberY" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style17">
                            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10"><strong>Your name:</strong></td>
                        <td class="auto-style5">
                            <asp:TextBox ID="input_name" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style5">
                            <asp:Button ID="Button_Submit" runat="server" OnClick="Button1_Click" Text="Submit" class="btn btn-primary" />
                            <asp:Button ID="Button_Clear" runat="server" OnClick="Button2_Click" Text="Clear" class="btn btn-danger"/>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
            <asp:Panel ID="Panel1" runat="server">
                <div class="auto-style12">
                    <asp:Label ID="label_results" runat="server" CssClass="auto-style18"></asp:Label>
                </div>
            </asp:Panel>
        </form>
    </div>
</body>
</html>
