using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen2RoyDuran
{
    public partial class mainMaster : System.Web.UI.MasterPage
    {
        ClsCliente cliente = new ClsCliente();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
            ClsCliente.GetNombre();
            ClsCliente.GetCedula();
            ClsCliente.GetTelefono();
            ClsCliente.GetDireccion();
            ClsCliente.SetServicio("Cable");
            Response.Redirect("factura.aspx");
            
        }
    }
}