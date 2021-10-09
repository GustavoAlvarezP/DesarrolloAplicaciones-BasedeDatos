using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Productos
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = "Data Source = LAPTOP-LO8K6NU9\\SQLEXPRESS;" +
    "Initial Catalog = VENTAS; integrated Security=SSPI";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            lblResult.Text = "";
            string selectSQL = "select * from Productos where codpro =" + txtCodigo.Text;
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader dr;
            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtNombre.Text = dr[1].ToString();
                    txtPrecio.Text = dr[2].ToString();
                    txtStock.Text = dr[3].ToString();
                }
                con.Close();
                dr.Close();
            }
            catch (Exception err)
            {
                lblResult.Text = "Error al acceder a productos";
                lblResult.Text += err.Message;
            }
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            string selectSQL = "Select * from productos";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader dr;
            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                con.Close();
            }
            catch (Exception err)
            {
                lblResult.Text = "Error al acceder a productos";
                lblResult.Text += err.Message;
            }
        }
    }
}