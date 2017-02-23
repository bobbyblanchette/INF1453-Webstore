using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSStest.dump
{
    public partial class Index : System.Web.UI.Page
    {
        private string connStr = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\tanp02\Downloads\Northwind.mdb;Persist Security Info=False";

        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection objCon = new OleDbConnection();
            
            objCon.ConnectionString = connStr;

            OleDbCommand objCmd = new OleDbCommand();
            objCmd.CommandType = System.Data.CommandType.Text;
            objCmd.Connection = objCon;

            

            objCmd.CommandText = "select * from Customers";

            objCon.Open();
            OleDbDataReader objReader = objCmd.ExecuteReader();
            GridView1.DataSource = objReader;
            GridView1.DataBind();
            objCon.Close();

        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            OleDbConnection objCon = new OleDbConnection();
            objCon.ConnectionString = connStr;

            OleDbCommand objCmd = new OleDbCommand();
            objCmd.CommandType = System.Data.CommandType.Text;
            objCmd.Connection = objCon;



            objCmd.CommandText = "select * from Customers " +
                                  "where ContactName like '%" + searchTextBox.Text + "%';";

            objCon.Open();
            OleDbDataReader objReader = objCmd.ExecuteReader();
            searchGridView.DataSource = objReader;
            searchGridView.DataBind();
            objCon.Close();
        }
    }
}