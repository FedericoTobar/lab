<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CantidadJugadores.ascx.cs" Inherits="CantidadJugadores" %>
<asp:TextBox runat="server" ID="textBoxCantidadJugadores" Width="90%"/>
<asp:RequiredFieldValidator ID="ValidarCantidad" ControlToValidate="textBoxCantidadJugadores" runat="server" ErrorMessage="<br/>La cantidad de jugadores es obligatoria!"/>
<asp:RangeValidator ID="RangoDosAVeinte" runat="server" Type="Integer" ControlToValidate="textBoxCantidadJugadores" MinimumValue="2" MaximumValue="20" ErrorMessage="Solo de 2 a 20 personas!"/>