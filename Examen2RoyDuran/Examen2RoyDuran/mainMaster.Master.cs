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
            try
            {
                ClsCliente.GetNombre();
                ClsCliente.GetCedula();
                ClsCliente.GetTelefono();
                ClsCliente.GetDireccion();
                ClsCliente.SetServicio("Cable");
                Response.Redirect("factura.aspx");
            }
            catch (Exception)
            {

                Response.Write("<script>alert('No peden haber es datos vacios');</script>");
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            ClsCliente.GetNombre();
            ClsCliente.GetCedula();
            ClsCliente.GetTelefono();
            ClsCliente.GetDireccion();
            ClsCliente.SetServicio("Agua");
            Response.Redirect("factura.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            ClsCliente.GetNombre();
            ClsCliente.GetCedula();
            ClsCliente.GetTelefono();
            ClsCliente.GetDireccion();
            ClsCliente.SetServicio("Electricidad");
            Response.Redirect("factura.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            ClsCliente.GetNombre();
            ClsCliente.GetCedula();
            ClsCliente.GetTelefono();
            ClsCliente.GetDireccion();
            ClsCliente.SetServicio("Telefonos");
            Response.Redirect("factura.aspx");
        }
    }
}