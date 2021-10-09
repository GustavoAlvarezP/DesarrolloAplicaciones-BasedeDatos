<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Productos.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {}
        .auto-style2 {}
        .nuevoEstilo11 {
            font-size: 70px;
            background-color: #6699FF;
            color: #FFFF00;
            text-align: center;
        }
        .nuevoEstilo4 {
            background-color: #669999;
        }
        .nuevoEstilo5 {
            background-color: #669999;
        }
    </style>
</head>
<body class="nuevoEstilo5">
    <form id="form1" runat="server" class="nuevoEstilo4">
        <div>
        </div>
        <asp:Label ID="Label2" runat="server" CssClass="nuevoEstilo11" Height="156px" Text="GESTION DE PRODUCTOS" Width="679px" BorderColor="#CCCC00"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Código" Width="80px" Font-Size="X-Large"></asp:Label>
        <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Nombre" Width="80px" Font-Size="Larger"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server" ReadOnly="True" Width="320px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Precio" Width="80px" Font-Size="Larger"></asp:Label>
        <asp:TextBox ID="txtPrecio" runat="server" ReadOnly="True" Width="85px" CssClass="auto-style2"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Stock" Width="80px" Font-Size="Larger"></asp:Label>
        <asp:TextBox ID="txtStock" runat="server" ReadOnly="True" CssClass="auto-style1" Width="89px"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar todos los Productos" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <asp:Label ID="lblResult" runat="server"></asp:Label>
        <br />
    </form>
    </body>
</html>
