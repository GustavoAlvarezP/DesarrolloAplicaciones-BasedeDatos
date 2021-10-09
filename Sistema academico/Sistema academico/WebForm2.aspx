<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Sistema_academico.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
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
        .nuevoEstilo12 {
            font-size: 70px;
            font-family: Bahnschrift;
            background-color: #00CCFF;
            color: #000000;
            text-align: center;
        }
        .nuevoEstilo13 {
            background-color: #FFFF99;
        }
        .nuevoEstilo14 {
            background-color: #FFFFCC;
        }
        .nuevoEstilo15 {
            background-color: #FFFF99;
        }
        .nuevoEstilo16 {
            background-color: #FFFF99;
        }
        .auto-style1 {
            margin-left: 40px;
        }
        .nuevoEstilo17 {
            background-color: #FFFF99;
        }
    </style>
</head>
<body class="nuevoEstilo5">
    <form id="form1" runat="server" class="nuevoEstilo13">
        <div>
        </div>
        <div class="auto-style1">
            <asp:Label ID="Label2" runat="server" CssClass="nuevoEstilo12" Height="176px" Text="SISTEMA ACADEMICO" Width="679px" BorderColor="#CCCC00"></asp:Label>
        </div>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="TABLA" Width="80px" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>ALUMNOS</asp:ListItem>
            <asp:ListItem>DOCENTES</asp:ListItem>
            <asp:ListItem>CURSOS</asp:ListItem>
            <asp:ListItem>HORARIOS</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar Tabla Seleccionada" />
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
