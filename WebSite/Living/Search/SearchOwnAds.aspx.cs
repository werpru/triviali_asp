using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SucheButton_Click(object sender, EventArgs e)
    {
        //if (!string.IsNullOrEmpty(this.TextBoxPlz.Text))
        //{
        //    SqlDataSource1.SelectCommand = "SELECT plz, city, start_date, end_date FROM tv01_ads where plz like('" + this.TextBoxPlz.Text + "%')";
        //}
        //else if (!string.IsNullOrEmpty(this.TextBoxOrt.Text))
        //{
        //    SqlDataSource1.SelectCommand = "SELECT plz, city, start_date, end_date FROM tv01_ads where city like('" + this.TextBoxOrt.Text + "%')";
        //}
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Suchergebnis_SelectedIndexChanged(object sender, EventArgs e)
    {
        System.Console.WriteLine(sender.ToString());
    }
}
