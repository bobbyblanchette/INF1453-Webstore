using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSStest.dump
{
    public partial class NouvellePage : System.Web.UI.Page
    {
        private string conStr = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\tanp02\Downloads\Northwind.mdb;Persist Security Info=False";

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection();
            con.ConnectionString = conStr;

            OleDbCommand com = new OleDbCommand();
            com.CommandType = System.Data.CommandType.Text;
            com.Connection = con;
            com.CommandText = "select * from Customers where " + searchDropDown.SelectedValue + " like '%" + searchTextBox.Text + "%';";

            con.Open();
            searchGridView.DataSource = com.ExecuteReader();
            searchGridView.DataBind();
            con.Close();
        }
    }
}