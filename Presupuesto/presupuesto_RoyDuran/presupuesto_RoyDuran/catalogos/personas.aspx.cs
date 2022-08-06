using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace presupuesto_RoyDuran.catalogos
{
    public partial class personas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlPersonas.Insert();
                limpiarTexto();
            }
            catch (Exception)
            {

                Response.Write("<script>alert('Este numero de cedula ya existe en la base de datos');</script>");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlPersonas.Update();
            limpiarTexto();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlPersonas.Delete();
                limpiarTexto();
            }
            catch (Exception)
            {

                Response.Write("<script>alert('No se puede eliminar, esta persona tiene usuarios activos');</script>");
                
            }

        }

        protected void limpiarTexto()
        {
            txtCedula.Text = "";
            txtNombre.Text = "";
            txtApellido1.Text = "";
            txtApellido2.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";              
        }
    }
}