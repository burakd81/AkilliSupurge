using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class odeme : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        odeneceklbl.Text = Request.QueryString["id"];
       
    }



    protected void odemeon_Click(object sender, EventArgs e)
    {
        if(name.Text=="" && cardnumber.Text == "" && expirationdate.Text =="" && securitycode.Text == "")
        {
            Response.Write("<script>alert('Bütün Kutucukların Dolması Gerekiyor')</script>");
        }
        else
        {
            Response.Write("<script>alert('Ödemeniz Başarı İle Gerçekleşti!'); window.location = 'Default.aspx'</script>");
        }
    }
}