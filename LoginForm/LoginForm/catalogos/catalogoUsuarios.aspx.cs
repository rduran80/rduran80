using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginForm
{
    public partial class inicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["UPIConnectionString"].ConnectionString;
                string query = "select * from usuario";
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter()) 
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataSet ds = new DataSet()) 
                            {
                                sda.Fill(ds);
                                //GridView1.DataSource = ds.Tables[0];
                                //GridView1.DataBind();
                            }
                        }

                    }
                }
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            txtClave.Text = "";
            txtNombre.Text = "";
        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            txtCodigo.Text = "";
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
            txtCodigo.Text = "";
            txtClave.Text = "";
            txtNombre.Text = "";
        }
    }
}