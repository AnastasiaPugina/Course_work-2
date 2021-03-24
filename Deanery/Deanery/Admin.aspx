<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Deanery.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div style="height: 128px">
                <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Main.aspx" style="margin-left: 492px" ValidateRequestMode="Disabled">
                </asp:Login>
            </div>
        
    </form>
</body>
</html>
