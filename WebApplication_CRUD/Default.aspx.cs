using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication_CRUD.ServiceReference1;

namespace WebApplication_CRUD
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
        protected void btInsert_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=RASY;Initial Catalog=WCFServiceApp;Persist Security Info=True;User ID=sa;Password=bibimbap2326");
            con.Open();
            InsertUser u = new InsertUser();
            u.Name = TextBoxName.Text;
            u.Email = TextBoxEmail.Text;
            string r = client.Insert(u);
            lblmsgInsert.Text = r.ToString();
            con.Close();
            TextBoxID.Text = "";
            TextBoxName.Text = "";
            TextBoxEmail.Text = "";
        }

        protected void btSearch_Click(object sender, EventArgs e)
        {
            ServiceReference1.GetTestData g = new ServiceReference1.GetTestData();
            g = client.GetInfo();
            DataTable dt = new DataTable();
            dt = g.userTable;
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=RASY;Initial Catalog=WCFServiceApp;Persist Security Info=True;User ID=sa;Password=bibimbap2326");
            con.Open();
            UpdateUser u = new UpdateUser();
            u.UID = int.Parse(TextBoxID.Text);
            u.Name = TextBoxName.Text;
            u.Email = TextBoxEmail.Text;
            string result = client.Update(u);
            lblmsgInsert.Text = result.ToString();
            con.Close();
            TextBoxID.Text = "";
            TextBoxName.Text = "";
            TextBoxEmail.Text = "";
        }

        protected void btDelete_Click(object sender, EventArgs e)
        {
            GetTestData g = new GetTestData();
            SqlConnection con = new SqlConnection("Data Source=RASY;Initial Catalog=WCFServiceApp;Persist Security Info=True;User ID=sa;Password=bibimbap2326");
            con.Open();
            DeleteUser d = new DeleteUser();
            d.UID = int.Parse(TextBoxID.Text);
            string res = client.Delete(d);
            lblmsgInsert.Text = res.ToString();
            con.Close();
            TextBoxID.Text = "";
            TextBoxName.Text = "";
            TextBoxEmail.Text = "";
        }
    }
}