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
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["presupuestoConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select email,clave,tipo_usuario from usuario where email = '" + txtNombre.Text + "' and clave = '" + txtClave.Text + "' and tipo_usuario = '" + 1 + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            if (registro.Read())
            {
                
                Response.Redirect("ingresos.aspx");
            }
            else
            {
                Response.Write("<script>alert('Usuario o clave incorrectos');</script>");
            }
            conexion.Close();
        }
    }
}