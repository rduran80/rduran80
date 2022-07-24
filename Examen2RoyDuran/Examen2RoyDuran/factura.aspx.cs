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
            if (!IsPostBack)
            {
                txtNombreCliente.Text = ClsCliente.GetNombre();
                txtCedulaCliente.Text = ClsCliente.GetCedula();
                txtTelefonoCliente.Text = ClsCliente.GetTelefono();
                txtDireccionCliente.Text = ClsCliente.GetDireccion();
                numFactura++;
                lblFactura.Text = (numFactura).ToString();
                lblServicio.Text = ClsCliente.GetServicio();
                lblMes.Text = drdMes.SelectedValue;
            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio.aspx");
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            ClsCliente.SetMes(lblMes.Text);
            txtMonto2.Text = txtMonto.Text;
            float descuent = float.Parse(txtDesc.Text);
            txtDesc2.Text = descuent.ToString();
            ClsCliente.SetDescuento(float.Parse(txtDesc2.Text));
            ClsCliente.SetSubtotal(float.Parse(txtMonto2.Text), float.Parse(txtDesc.Text));
            txtSubtotal.Text = ClsCliente.GetSubtotal().ToString();
            ClsCliente.SetIva(ClsCliente.GetSubtotal());
            txtIva.Text = ClsCliente.GetIva().ToString();
            ClsCliente.SetTotal(ClsCliente.GetSubtotal(),ClsCliente.GetIva());
            txtTotal.Text = ClsCliente.GetTotal().ToString();
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            ClsCliente.guardarCliente();
        }
    }
}