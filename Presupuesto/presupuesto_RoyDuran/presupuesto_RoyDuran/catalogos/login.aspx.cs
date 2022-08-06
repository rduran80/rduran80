using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace presupuesto_RoyDuran
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["UPIConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select nombre, clave from usuario where nombre = '" + txtNombre.Text + "' and clave = '" + txtClave.Text + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            if (registro.Read())
            {
                //ClsUsuario.SetNombre(registro.GetValue(0).ToString());
                Response.Redirect("icicio.aspx.aspx");
            }
            else
            {
                Response.Write("<script>alert('Usuario o clave incorrectos');</script>");
            }
            conexion.Close();
        }
    }
}