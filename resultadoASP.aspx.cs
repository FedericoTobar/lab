using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sesion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Deportes.Text = Session["Deportes"].ToString();
        Clasificacion.Text = Session["Clasificacion"].ToString();
        Tipo.Text = Session["Tipo"].ToString();
        Categoria.Text = Session["Categoria"].ToString();
        Cantidad.Text = Session["Cantidad"].ToString();
        Descripcion.Text = Session["Descripcion"].ToString();
    }
}