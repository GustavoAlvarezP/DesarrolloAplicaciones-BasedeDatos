using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RegistroCliente
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = "Data Source = LAPTOP-LO8K6NU9\\SQLEXPRESS;" +
            "Initial Catalog=Ventas; Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!this.IsValid) return;
            string insertSQL = "INSERT INTO CLIENTES VALUES(" +
            txtCodigo.Text + ", '" + txtNombres.Text + "','" +
            txtDireccion.Text + "','" + txtTelefono.Text + "','" +
            txtMail.Text + "'," + txtEdad.Text + ")";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                lblResult.Text = "Cliente registrado con exito";
                con.Close();
                txtCodigo.Text = "";
                txtNombres.Text = "";
                txtDireccion.Text = "";
                txtTelefono.Text = "";
                txtEdad.Text = "";
                txtMail.Text = "";

            }
            catch (Exception err)
            {
                lblResult.Text = "Error al registrar el cliente";
                lblResult.Text += err.Message;
            }
        }

    }
}
    
