using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Sistema_academico
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string connectionString = "Data Source = LAPTOP-LO8K6NU9\\SQLEXPRESS;" +
            "Initial Catalog = SISTEMA ACADEMICO; integrated Security=SSPI";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {

            if (CheckBoxList1.Items[0].Selected)
            {
                string selectSQL = "Select * from ALUMNO";
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
                    lblResult.Text = "Error al acceder a SISTEMA ACADEMICO";
                    lblResult.Text += err.Message;
                }
                if (CheckBoxList1.Items[1].Selected)
                {
                    string selectSQL1 = "Select * from DOCENTE";
                    SqlConnection con1 = new SqlConnection(connectionString);
                    SqlCommand cmd1 = new SqlCommand(selectSQL1, con1);
                    SqlDataReader dr1;
                    try
                    {
                        con1.Open();
                        dr1 = cmd1.ExecuteReader();
                        GridView1.DataSource = dr1;
                        GridView1.DataBind();
                        con1.Close();
                    }
                    catch (Exception err)
                    {
                        lblResult.Text = "Error al acceder a SISTEMA ACADEMICO";
                        lblResult.Text += err.Message;
                    }
                    if (CheckBoxList1.Items[2].Selected)
                    {
                        string selectSQL2 = "Select * from DOCENTE";
                        SqlConnection con2 = new SqlConnection(connectionString);
                        SqlCommand cmd2 = new SqlCommand(selectSQL2, con2);
                        SqlDataReader dr2;
                        try
                        {
                            con2.Open();
                            dr2 = cmd2.ExecuteReader();
                            GridView1.DataSource = dr2;
                            GridView1.DataBind();
                            con2.Close();
                        }
                        catch (Exception err)
                        {
                            lblResult.Text = "Error al acceder a SISTEMA ACADEMICO";
                            lblResult.Text += err.Message;
                        }
                    }
                    if (CheckBoxList1.Items[3].Selected)
                    {
                        string selectSQL3 = "Select * from DOCENTE";
                        SqlConnection con3 = new SqlConnection(connectionString);
                        SqlCommand cmd3 = new SqlCommand(selectSQL3, con3);
                        SqlDataReader dr3;
                        try
                        {
                            con3.Open();
                            dr3 = cmd3.ExecuteReader();
                            GridView1.DataSource = dr3;
                            GridView1.DataBind();
                            con1.Close();
                        }
                        catch (Exception err)
                        {
                            lblResult.Text = "Error al acceder a SISTEMA ACADEMICO";
                            lblResult.Text += err.Message;
                        }
                    }

                }
            }
        }
    }
    }