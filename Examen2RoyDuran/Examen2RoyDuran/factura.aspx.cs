using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen2RoyDuran
{
    public partial class factura : System.Web.UI.Page
    {
        int numFactura;
        ClsCliente cliente = new ClsCliente();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtNombreCliente.Text = cliente.GetNombre();
            txtCedulaCliente.Text = cliente.GetCedula();
            txtTelefonoCliente.Text = cliente.GetTelefono();
            txtDireccionCliente.Text = cliente.GetDireccion();
            numFactura = cliente.GetFactura() + 1 ;
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio.aspx");
        }
    }
}