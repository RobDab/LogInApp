<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logged.aspx.cs" Inherits="LogInApp.Logged" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="title" runat="server" Text=""><h2>Logged Page</h2></asp:Label>
            <hr />
            <asp:Label ID="UserData" runat="server" Text=""></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Log Out" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
