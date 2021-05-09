using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MukeshtestApp
{
    public partial class Firsttest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["MukeshDBConnection"].ConnectionString;
            string queryString = "SELECT TOP (1000) * FROM [dbo].[Person];";
            using (var connection = new SqlConnection(connectionString))
            {
                var command = new SqlCommand(queryString, connection);
                connection.Open();
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Console.WriteLine(String.Format("{0}, {1}", reader[0], reader[1]));
                        lblId.Text = reader[0].ToString();
                        lblUser.Text = reader[1].ToString();
                        lblMiddlename.Text = reader[2].ToString();
                        lblLastname.Text = reader[3].ToString();
                    }
                }
            }
        }
    }
}