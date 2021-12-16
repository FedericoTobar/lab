<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPageMenu.master" CodeFile="olimpiadas.aspx.cs" Inherits="olimpiadas" %>

<%@ Register Src="~/CantidadJugadores.ascx" TagPrefix="uc1" TagName="CantidadJugadores" %>
<%@ Register Src="~/DeporteTipo.ascx" TagPrefix="uc2" TagName="DeporteTipo" %>
<%@ Register Src="~/Clasificacion.ascx" TagPrefix="uc3" TagName="Clasificacion" %>

<asp:Content runat="server" ContentPlaceHolderID="CajaMaster">
        <asp:Table runat="server" BorderWidth="1">
            <asp:TableRow runat="server">
                <asp:TableCell ColumnSpan="2" BorderWidth="1"><asp:Image runat="server" ImageUrl="/imagenes/olimpiadas.jpg"/></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableHeaderCell BorderWidth="1">Deportes</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:TextBox runat="server" ID="textBoxDeportes" Width="90%" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="textBoxDeportes" ErrorMessage="<br>Este campo es necesario!"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell BorderWidth="1">Clasificación</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <uc3:Clasificacion runat="server" id="Clasificacion" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell BorderWidth="1">Tipo</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <uc2:DeporteTipo runat="server" id="DeporteTipo"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell runat="server" BorderWidth="1">Cantidad de jugadores</asp:TableHeaderCell>
                <asp:TableCell runat="server" BorderWidth="1">
                    <uc1:CantidadJugadores runat="server" id="CantidadJugadores" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell runat="server" BorderWidth="1">Categoría</asp:TableHeaderCell>
                <asp:TableCell runat="server" BorderWidth="1">
                    <asp:CheckBoxList runat="server" ID="checkBoxCategoria">
                        <asp:ListItem Value="Infantil">Infantil</asp:ListItem>
                        <asp:ListItem Value="Juvenil">Juvenil</asp:ListItem>
                        <asp:ListItem Value="Mayores">Mayores</asp:ListItem>
                    </asp:CheckBoxList>
                    <asp:CustomValidator runat="server" OnServerValidate="CheckBox_ServerValidate" ErrorMessage="Al menos uno debe ser seleccionado!"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell  BorderWidth="1">Descripción</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1"><asp:TextBox TextMode="MultiLine" Height="50" Width="90%" style="resize:none" runat="server" ID="descripcion" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="descripcion" ErrorMessage="<br>La descripción no puede ser vacía!"/>
                </asp:TableCell>            
            </asp:TableRow>
        </asp:Table>
        <asp:Button id="ValidarPagina" OnClick="ValidarPagina_Click" runat="server" Text="Ver Resumen"/>
        <asp:Label ID="Label1" runat="server"></asp:Label>
</asp:Content>