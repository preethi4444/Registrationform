using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Registrationform
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Saipreethi_Induri\source\repos\Registrationform\Registrationform\App_Data\Database1.mdf;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("select * from Country", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DropDownList4.DataSource = dt;
                DropDownList4.DataBind();

            }

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("Select State");

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Saipreethi_Induri\source\repos\Registrationform\Registrationform\App_Data\Database1.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from State where cid=" + DropDownList4.SelectedItem.Value, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DropDownList2.DataSource = dt;
            DropDownList2.DataBind();
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add("Select City");

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Saipreethi_Induri\source\repos\Registrationform\Registrationform\App_Data\Database1.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from City where sid=" + DropDownList2.SelectedItem.Value, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            DropDownList3.DataSource = dt;
            DropDownList3.DataBind();

        }
        //private void ValidateForm()
        //{
        //    if (String.IsNullOrEmpty(TextBox1.Text))
        //    {
        //        Label4.Text = "Enter first name";
        //    }
        //    else
        //    {
        //        Label4.Text = " ";
        //    }
        //    if (String.IsNullOrEmpty(TextBox2.Text))
        //    {
        //        Label5.Text = "Enter last name";
        //    }
        //    else
        //    {
        //        Label5.Text = " ";
        //    }
        //    if (String.IsNullOrEmpty(TextBox3.Text))
        //    {
        //        Label6.Text = "Enter email";
        //    }
        //    else
        //    {
        //        Label6.Text = " ";
        //    }
        //    if (String.IsNullOrEmpty(TextBox4.Text))
        //    {
        //        Label7.Text = "Enter phone number";
        //    }
        //    else
        //    {
        //        Label7.Text = " ";
        //    }
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim() == String.Empty)
            {



                Response.Write("<script>alert('First name required!');</script>");
            }
            else
            {
                Response.Redirect("WebForm2.aspx");
            }




            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Saipreethi_Induri\source\repos\Registrationform\Registrationform\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into registerr values (@fname, @lname, @emaill, @mobileno, @countryy, @statee, @cityy, @gender, @stream, @dateofbirth)", con);
            string genderr = string.Empty;
            if (radiomale.Checked)
            {
                genderr = "male";
            }
            else
            {
                genderr = "female";
            }
            var message=" ";
            if (javacheck.Checked)
            {
                message += "java";
            }
            if (netcheck.Checked)
            {
                message += ".Net";
            }

            cmd.Parameters.AddWithValue("fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("lname", TextBox2.Text);
            cmd.Parameters.AddWithValue("emaill",TextBox3.Text);
            cmd.Parameters.AddWithValue("mobileno", TextBox4.Text);
            cmd.Parameters.AddWithValue("countryy", DropDownList4.SelectedValue);
            cmd.Parameters.AddWithValue("statee", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("cityy", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("gender", genderr);
            cmd.Parameters.AddWithValue("stream",message);
            //cmd.Parameters.AddWithValue("stream", netcheck);
            cmd.Parameters.AddWithValue("dateofbirth", datepicker1.SelectedDate.ToString("yyyy/MM/dd"));
            cmd.ExecuteNonQuery();
            //cmd.Parameters.AddWithValue("MobileNumber", MobileNumber.Text);
            //cmd.Parameters.AddWithValue("Password", Password.Text);
        }
    }
}