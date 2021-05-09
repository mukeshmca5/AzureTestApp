<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Firsttest.aspx.cs" Inherits="MukeshtestApp.Firsttest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Connect to Azure DB" Width="350px" />
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="257px">
            <br />
            <br />
            <asp:Label ID="lblIDdsdd" runat="server" Text="ID"></asp:Label>
            &nbsp;--
            <asp:Label ID="lblId" runat="server"></asp:Label>
            <br />
            &nbsp;<br /> User First Name --
            <asp:Label ID="lblUser" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblMiddlenamesdsd" runat="server" Text="Middle Name"></asp:Label>
            &nbsp;--
            <asp:Label ID="lblMiddlename" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            &nbsp;--
            <asp:Label ID="lblLastname" runat="server"></asp:Label>
            <br />
        </asp:Panel>
    </form>
</body>
</html>
