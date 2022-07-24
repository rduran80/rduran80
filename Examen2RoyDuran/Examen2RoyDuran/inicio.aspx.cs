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
        //ClsCliente cliente = new ClsCliente();
        protected void Page_Load(object sender, EventArgs e)
        {
            ClsCliente.SetNombre(txtNombre.Text);
            ClsCliente.SetCedula(txtCedula.Text);
            ClsCliente.SetTelefono(txtTelefono.Text);
            ClsCliente.SetDireccion(txtDireccion.Text);
            ClsCliente.GetFactura();
        }
    }
}