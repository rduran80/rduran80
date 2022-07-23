using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen2RoyDuran
{
    public partial class inicio : System.Web.UI.Page
    {
        ClsCliente cliente = new ClsCliente();
        protected void Page_Load(object sender, EventArgs e)
        {
            cliente.SetNombre(txtNombre.Text);
            cliente.SetCedula(txtCedula.Text);
            cliente.SetTelefono(txtTelefono.Text);
            cliente.SetDireccion(txtDireccion.Text);
        }
    }
}