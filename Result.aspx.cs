using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Timers;

namespace WebApplicationFYP
{
    public partial class Result : System.Web.UI.Page
    {
        DataTable dbconnect1;

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\\APIIT LMS\\3rd year\\FYP\\similarimagesfinder\\similarimagesfinder\\Trunk\\SimilarImagesFinder.Windows\\DatabaseFyp.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect1"].ConnectionString);
                conn.Open();
                string checkuser = "select Top(1) Similarity from FYP where Destination='" + txtdestintion.Text + "'";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                double Similarity = 0;
                if (double.TryParse(cmd.ExecuteScalar().ToString(), out Similarity))
                {
                    if (Similarity>=70)
                    {
                        Response.Write("Contact Eye Surgeon !!!");
                    }
                    else
                    {
                        Response.Write("You don't have cataract or Conjunctivities!!!");
                    }
                }


                conn.Close();
            }
        }

        private void Button1_Click(object sender, EventArgs e)
        {


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect1"].ConnectionString);
            conn.Open();


            //string from = "Select *from FYP";
            //SqlDataAdapter da = new SqlDataAdapter(from, con);
            //SqlCommand cmd = new SqlCommand(from, con);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //GridView1.DataSource = ds;
            //GridView1.DataBind(); 

            //con.Close();


            //switch (from)
            //{
            //    case 1


            //}



        }

        protected void txtdestintion_TextChanged(object sender, EventArgs e)
        {

            DataView dv = new DataView(from);
            dv.RowFilter = string.Format("Destination LIKE '%{0}%'", txtdestintion.Text);
            //    GridView1.DataSource = dv;
        }



        public DataTable from { get; set; }
    }
}