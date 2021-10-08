<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RegistroCliente.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .nuevoEstilo1 {
            background-color: #FFFF99;
            text-align: center;
        }
        .auto-style3 {
            background-color: #FFFFCC;
            text-align: left;
        }
        .auto-style4 {
            text-align: center;
            text-indent: inherit;
            background-color: #FFFF99;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body class="nuevoEstilo7" style="height: 798px">
    <form id="form1" runat="server">
        <div>
        </div>
            <div class="auto-style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" BackColor="Black" BorderColor="Yellow" Font-Bold="True" Font-Italic="False" 
            Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="#FFFF66" Height="76px" Text="MANTENIMIENTO DE CLIENTES" 
            Width="464px" CssClass="auto-style4"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Código" CssClass="auto-style3"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCodigo" ErrorMessage="Debe ingresar el codigo del cliente" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Nombres"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="txtNombres" runat="server"  Width="246px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombres" ErrorMessage="Debe ingresar el nombre del cliente" ForeColor="#CC3300"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Direccion"></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtDireccion" runat="server" Width="246px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Debe ingresar la dirección del cliente" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Telefono"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Debe ingresar el telefono del cliente" ForeColor="#CC3300"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtMail" runat="server" Width="246px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" ErrorMessage="El correo electrónico ingresado no es valido" ForeColor="#CC3300" ValidationExpression="\S+@\S+\,\S+"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Edad"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEdad" runat="server" Height="16px" Width="60px"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtEdad" ErrorMessage="La edad ingresada debe estar en el rango de 18-100" ForeColor="#CC3300" MaximumValue="100" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="GRABAR" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="lblResult" runat="server"></asp:Label>
            </div>
    </form>
</body>
</html>
