<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyLogin.aspx.cs" Inherits="WebApp_task_1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblInfo" runat="server" EnableViewState="false"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"/>
        </div>
        <div>
            <asp:Panel ID="MainPanel" runat="server" Height="112px">
                <p>
                    <asp:Button ID="Button2" runat="server" Text="Button2" />
                    <asp:Button ID="Button3" runat="server" Text="Button3" />
                    <asp:Button ID="Button4" runat="server" Text="Button4" />
                </p>
                <p>
                    <asp:Label ID="Label1" runat="server" Width="48px">Name:</asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </p>
            </asp:Panel>
            <p>
                <asp:Button ID="Button5" runat="server" Text="Button4" /></p>
        </div>
        <div>
            <input name="TextBox2" type="text" id="TextBox2" 
                style="font-size:20px;color:red;background-color:lightyellow;" 
                 value="<Вставьте ваш e-mail>" onfocus="alert(TextBox2.value);" />
        </div>
    </form>
</body>
</html>
