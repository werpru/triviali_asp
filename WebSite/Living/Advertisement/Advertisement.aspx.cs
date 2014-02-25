using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Advertisement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void Wizard1_FinishButtonClick1(object sender, WizardNavigationEventArgs e)
    {
        Response.Redirect("~/Living/Advertisement/LaunchConfirmation.aspx");
    }

    protected void TextBoxPlz_TextChanged(object sender, EventArgs e)
    {
    }
}
