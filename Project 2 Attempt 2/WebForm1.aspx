<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Project_2_Attempt_2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            height: 40px;
        }
        .auto-style4 {
            height: 40px;
            width: 299px;
        }
        .auto-style5 {
            width: 299px;
        }
        .auto-style8 {
            height: 40px;
            width: 271px;
            text-align: right;
        }
        .auto-style9 {
            width: 271px;
        }
        .auto-style10 {
            width: 271px;
            text-align: right;
        }
        .auto-style11 {
            font-size: larger;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            background-color: #FFFFFF;
        }
        .auto-style14 {
            font-size: larger;
            background-color: #FFFFFF;
        }
        .auto-style15 {
            width: 271px;
            text-align: right;
            height: 42px;
        }
        .auto-style16 {
            width: 299px;
            height: 42px;
        }
        .auto-style17 {
            height: 42px;
        }
        .auto-style18 {
            font-size: large;
            color: #0033CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h3 class="auto-style12">
            <span class="auto-style11"><strong><span class="auto-style13">Simple Addition Calculator</span></strong></span><strong><br class="auto-style14" />
            </strong>
        </h3>
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
                    <asp:Button ID="Button_Submit" runat="server" OnClick="Button1_Click" Text="Submit" />
                    <asp:Button ID="Button_Clear" runat="server" OnClick="Button2_Click" Text="Clear" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Panel ID="Panel1" runat="server">
            <div class="auto-style12">
                <asp:Label ID="label_results" runat="server" CssClass="auto-style18"></asp:Label>
            </div>
        </asp:Panel>
    </form>
    </body>
</html>
