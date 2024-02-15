<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Concessionaria.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <h2>Prezzo: <span id="LblTotal" runat="server"></span></h2>
                <ul id="LstSelectedOptions" runat="server"></ul>
            </div>

            <asp:DropDownList ID="DrpWarranty" runat="server" AutoPostBack="True">
                <asp:ListItem ID="Year1" Value="1" Text="1 anno"></asp:ListItem>
                <asp:ListItem ID="Year2" Value="2" Text="2 anni"></asp:ListItem>
                <asp:ListItem ID="Year3" Value="3" Text="3 anni"></asp:ListItem>
            </asp:DropDownList>

            <asp:CheckBoxList ID="LstOptions" runat="server" AutoPostBack="True">
                <asp:ListItem ID="Option1" Value="100" Text="Option 1"></asp:ListItem>
                <asp:ListItem ID="Option2" Value="100" Text="Option 2"></asp:ListItem>
                <asp:ListItem ID="Option3" Value="200" Text="Option 3"></asp:ListItem>
                <asp:ListItem ID="Option4" Value="300" Text="Option 4"></asp:ListItem>
            </asp:CheckBoxList>

            <asp:DropDownList ID="DrpCars" runat="server" AutoPostBack="True"></asp:DropDownList>
            <img id="ImgCar" runat="server" width="150" />
        </div>
    </form>
</body>
</html>
