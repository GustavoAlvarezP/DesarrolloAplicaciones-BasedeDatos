<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BusquedaClientes.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body class="nuevoEstilo5">
    <form id="form1" runat="server" class="nuevoEstilo4">
        <div>
        </div>
        <asp:Label ID="Label2" runat="server" CssClass="nuevoEstilo11" Height="157px" Text="Búsqueda de CLIENTES" Width="527px"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Código" Width="70px"></asp:Label>
        <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Nombres" Width="70px"></asp:Label>
        <asp:TextBox ID="txtNombres" runat="server" ReadOnly="True" Width="320px"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Dirección" Width="70px"></asp:Label>
        <asp:TextBox ID="txtDireccion" runat="server" ReadOnly="True" Width="320px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Teléfono" Width="70px"></asp:Label>
        <asp:TextBox ID="txtTelefono" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="E-Mail" Width="70px"></asp:Label>
        <asp:TextBox ID="txtMail" runat="server" ReadOnly="True" Width="320px"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Edad" Width="70px"></asp:Label>
        <asp:TextBox ID="txtEdad" runat="server" ReadOnly="True" Width="50px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar Todos los Clientes" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <asp:Label ID="lblResult" runat="server"></asp:Label>
        <br />
    </form>
    <p class="nuevoEstilo4">
&nbsp;</p>
</body>
</html>
