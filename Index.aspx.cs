using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Concessionaria
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Total = 0;
            string connectionString = ConfigurationManager.ConnectionStrings["DbConcessionarioConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(connectionString);

            conn.Open();
            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Cars", conn);
            SqlDataReader reader = sqlCommand.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    if (!IsPostBack)
                    {
                        ListItem listItem = new ListItem();
                        listItem.Value = reader["Id"].ToString();
                        listItem.Text = reader["Model"].ToString();
                        DrpCars.Items.Add(listItem);
                    }
                    if (reader["Id"].ToString() == DrpCars.SelectedValue)
                    {
                        ImgCar.Src = reader["image"].ToString();
                        Total += Convert.ToInt32(reader["Price"]);
                    }
                }
            }

            Total += Convert.ToInt32(DrpWarranty.SelectedValue) * 120;

            string selectedOptions = "";
            foreach (ListItem item in LstOptions.Items)
            {
                if (item.Selected)
                {
                    Total += Convert.ToInt32(item.Value);
                    selectedOptions += $"<li>{item.Text} - {item.Value}</li>";
                }
            }
            LblTotal.InnerText = Total.ToString();
            LstSelectedOptions.InnerHtml = selectedOptions;
        }
    }
}