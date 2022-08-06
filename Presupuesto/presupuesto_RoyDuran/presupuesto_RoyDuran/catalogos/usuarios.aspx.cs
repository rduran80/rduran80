using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace presupuesto_RoyDuran.catalogos
{
    public partial class usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlPrsupuesto.Insert();
                limpiarCampos();
            }
            catch (Exception)
            {

                Response.Write("<script>alert('El E-Mail ya existe en la base de datos');</script>");
            }
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlPrsupuesto.Delete();
            limpiarCampos();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlPrsupuesto.Update();
            limpiarCampos();
        }

        protected void limpiarCampos()
        {
            txtClave.Text = "";
            txtMail.Text = "";
            txtIdpersona.Text = "";
        }

    }
}