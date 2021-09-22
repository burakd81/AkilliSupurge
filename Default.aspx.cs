using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data.Sql;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void msjGonder_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-TP4PKG8\\SQLEXPRESS;Initial Catalog=AkilliSupurge;Integrated Security=True");
        baglanti.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO Mesajlar(AdSoyad,Email,Mesaj) VALUES ('" + name.Text + "','" + email.Text + "','" + message.Text + "')", baglanti);


        cmd.ExecuteNonQuery();
        baglanti.Close();
        Response.Write("<script>alert('Mesajınız iletildi.')</script>");

    }

}
