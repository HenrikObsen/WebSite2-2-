<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSend">
            <div>
                <h2>Send en mail</h2>
                Navn:
            
            <asp:TextBox ID="navn" runat="server" ValidationGroup="send"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv01" ControlToValidate="navn" runat="server" ValidationGroup="send" ErrorMessage="Du skal skrive dit navn!!!"></asp:RequiredFieldValidator>
                <br />
                Email:
            <asp:TextBox ID="email" runat="server" ValidationGroup="send"></asp:TextBox>
                <asp:RegularExpressionValidator ID="rfv02" runat="server" ControlToValidate="email" ErrorMessage="Det skal være en gyldig e-mail!!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="send"></asp:RegularExpressionValidator>
                <br />
                <asp:Button ID="btnSend" runat="server" ValidationGroup="send" Text="Send" OnClick="Button1_Click" />
            </div>
        </asp:Panel>
        <hr />

        <asp:Panel ID="Panel2" runat="server" DefaultButton="btnSoeg">
            <h2>Søgning</h2>
            <asp:TextBox ID="soeg" runat="server" ValidationGroup="soeg"></asp:TextBox>
            <asp:Button ID="btnSoeg" runat="server" Text="SØG" ValidationGroup="soeg" />
            <asp:RequiredFieldValidator ID="rfv03" runat="server" ControlToValidate="soeg" ErrorMessage="Indtast søgeord!!!" ValidationGroup="soeg"></asp:RequiredFieldValidator>
        </asp:Panel>
    </form>
</body>
</html>
