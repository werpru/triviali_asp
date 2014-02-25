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
        Suchergebnis.Visible = false;
    }

    protected void SucheButton_Click(object sender, EventArgs e)
    {
        Suchergebnis.Visible = true;
        string selectCommand = "SELECT plz, city, start_date, end_date FROM tv01_ads {0}";
        string selectCondition = string.Empty;
        System.Console.WriteLine("User: " + User);

        if (!string.IsNullOrEmpty(this.TextBoxPlz.Text) && !string.IsNullOrEmpty(this.TextBoxOrt.Text))
        {
            selectCondition = " where (plz like ('" + this.TextBoxPlz.Text + "%')" + " and " + "city like ('" + this.TextBoxOrt.Text + "%'))";
        }
        else if (!string.IsNullOrEmpty(this.TextBoxPlz.Text))
        {
            //SELECT plz, city, start_date, end_date FROM tv01_ads order by start_date
            selectCondition = " where plz like ('" + this.TextBoxPlz.Text + "%')";
        }
        else if (!string.IsNullOrEmpty(this.TextBoxOrt.Text))
        {
            selectCondition = " where ort like ('" + this.TextBoxOrt.Text + "%')";       
        }

        selectCommand = string.Format(selectCommand, selectCondition);
        SqlDataSource1.SelectCommand = selectCommand;

    }
}
