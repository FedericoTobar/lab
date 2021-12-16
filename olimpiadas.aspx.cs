using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class olimpiadas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (DeporteTipo.GetSelected() == "Individual")
        {
            CantidadJugadores.SetText("1");
            CantidadJugadores.Deshabilitar();
            CantidadJugadores.DesactivarRango();
        }
        else
        {
            CantidadJugadores.SetText("2");
            CantidadJugadores.Habilitar();
            CantidadJugadores.ActivarRango();
        }       
    }
    public bool algunoEstaCheck()
    {
        var length = checkBoxCategoria.Items.Count;
        for (int i = 0; i < length; i++)
        {
            if (checkBoxCategoria.Items[i].Selected)
            {
                return true;
            }
        }
        return false;
    }

    protected void CheckBox_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = algunoEstaCheck();
    }

    protected void ValidarPagina_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid)
        {
            Label1.Text = "Su formulario no es válido, verifique todos los campos.";
        }
        else
        {
            Session["Deportes"] = textBoxDeportes.Text;
            Session["Clasificacion"] = Clasificacion.GetSeleccion();
            Session["Tipo"] = DeporteTipo.GetSelected();
            Session["Cantidad"] = CantidadJugadores.GetText();

            String clasificacion = "";

            for (int i = 0; i < checkBoxCategoria.Items.Count; i++)
            {
                if (checkBoxCategoria.Items[i].Selected)
                {
                    clasificacion += checkBoxCategoria.Items[i].Text + "\n";
                }
            }

            Session["Categoria"] = clasificacion;
            Session["Descripcion"] = descripcion.Text;

            Response.Redirect("resultadoASP.aspx");
        }
    }
}