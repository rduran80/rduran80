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
    public partial class catalogoArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["UPIConnectionString2"].ConnectionString;
                string query = "select * from articulos";
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
                                GridView1.DataSource = ds.Tables[0];
                                GridView1.DataBind();
                            }
                        }

                    }
                }
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            txtDescripcion.Text = "";
            txtCantidad.Text = "";
            txtPrecio.Text = "";
            txtFechIng.Text = "";
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
            txtDescripcion.Text = "";
            txtCantidad.Text = "";
            txtPrecio.Text = "";
            txtFechIng.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["UPIConnectionString2"].ConnectionString;
            string query = $"select * from articulos where codigo = '{txtCodigo.Text}'";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataSet ds = new DataSet())
                        {sda.Fill(ds);
                            GridView1.DataSource = ds.Tables[0];
                            GridView1.DataBind();
                        }
                    }

                }
            }
            txtCodigo.Text = "";
        }
    }
}