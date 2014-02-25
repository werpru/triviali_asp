using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SendMail_Click(object sender, EventArgs e)
    {
        MailMessage mail = new MailMessage();
        mail.To.Add("registration@triviali.de");
        mail.To.Add("wp@wernerpruefer.com");
        mail.From = new MailAddress("developer@triviali.de");
        mail.Subject = "Mail per ASP.NET ...";
        mail.Body = "... GEHT!";
        mail.BodyEncoding = System.Text.Encoding.GetEncoding("iso-8859-1");
        mail.IsBodyHtml = false;

        SmtpClient mailClient = new SmtpClient();
        mailClient.Credentials = new System.Net.NetworkCredential("developer@triviali.de", "Carmen");
        mailClient.Host = "Smtp.Strato.de";
        mailClient.Send(mail);
    }
    protected void showDialog_Click(object sender, EventArgs e)
    {

    }
}

