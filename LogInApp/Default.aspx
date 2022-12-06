<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LogInApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>LogIn</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Log in page</h2>
            <div id="loginForm">
            <asp:TextBox ID="Username" runat="server" Placeholder="Username"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldUsername" 
                runat="server" 
                ErrorMessage="Inserisci Username" 
                Display="Dynamic"
                ControlToValidate="Username"></asp:RequiredFieldValidator>

            <asp:TextBox ID="Password" runat="server" Placeholder="Password" Type="password"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldPassword" 
                runat="server" 
                ErrorMessage="Inserisci Password" 
                Display="Dynamic"
                ControlToValidate="Password"></asp:RequiredFieldValidator>

            <asp:Button ID="Login_btn" runat="server" Text="LogIn" OnClick="Login_bt_Click" />
            </div>
        </div>
    </form>
</body>
</html>
