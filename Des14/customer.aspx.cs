using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Des14
{
    public partial class customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connect = new SqlConnection();
                connect.ConnectionString = "Data Source=DESKTOP-78B3490\\SQLEXPRESS; database=task; integrated security=SSPI";
                connect.Open();

                string name = TextBox1.Text;
                int age = Convert.ToInt32(TextBox2.Text);
                string Country = TextBox3.Text;
                int phone = Convert.ToInt32(TextBox4.Text);
                int id= Convert.ToInt32(TextBox5.Text);

                string Query = "insert into customer (cus_name , age , Country , Phone_Number , Id) values('" + name + "', '" + age + "', '" + Country + "','" + phone + "','" + id + "')";
                SqlCommand com = new SqlCommand(Query, connect);
                com.ExecuteNonQuery();
                connect.Close();

            }
            catch(SqlException q)
            {
                Response.Write(q.Message);
            }

            GetData();


        }

        private void GetData()
        {
            try
            {
                SqlConnection c = new SqlConnection("Data Source=DESKTOP-78B3490\\SQLEXPRESS; database=task; integrated security=SSPI");

                SqlCommand comand = new SqlCommand("select * from customer", c);
                c.Open();

                SqlDataReader sdr = comand.ExecuteReader();
                string table = "<table class='table table-striped'> <tr><th>name</th> <th>age</th> <th>Country</th>  <th>phone</th>  <th>id</th>";
                while (sdr.Read())
                {
                    table += $"<tr><td>{sdr[1]}</td><td>{sdr[2]}</td><td>{sdr[3]}</td><td>{sdr[4]}</td><td>{sdr[0]}</td></tr>";
                }
                table += "</table>";
                Label7.Text = table;
                c.Close();
            }
            catch
            (Exception ex)
            {

                Label7.Text = ex.Message;


            }
        }
    }
}