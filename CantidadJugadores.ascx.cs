using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CantidadJugadores : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string GetText()
    {
        return textBoxCantidadJugadores.Text;
    }

    public void SetText(string text)
    {
        textBoxCantidadJugadores.Text = text;
    }

    public void Habilitar()
    {
        textBoxCantidadJugadores.Enabled = true;
    }
    public void Deshabilitar()
    {
        textBoxCantidadJugadores.Enabled = false;
    }

    public void ActivarRango()
    {
        RangoDosAVeinte.Enabled = true;
    }
    public void DesactivarRango()
    {
        RangoDosAVeinte.Enabled = false;
    }

}