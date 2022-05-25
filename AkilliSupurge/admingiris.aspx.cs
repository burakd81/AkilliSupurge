using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ClientServices;
using System.Data.SqlClient;
using System.Data.Sql;
public partial class admingiris : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlDataReader oku;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void grsbtn_Click(object sender, EventArgs e)
    {
        string sorgu = "SELECT * FROM Admin where KullaniciAdi=@kadi AND Parola=@pass";
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-TP4PKG8\\SQLEXPRESS;Initial Catalog=AkilliSupurge;Integrated Security=True");
        cmd = new SqlCommand(sorgu, baglanti);
        if (kadi.Text=="" || pass.Text=="")
        {
            Response.Write("<script>alert('Lütfen boşluk bırakmayınız')</script>");
        }
        else
        {
            cmd.Parameters.AddWithValue("@kadi", kadi.Text);
            cmd.Parameters.AddWithValue("@pass", pass.Text);

            baglanti.Open();
            oku = cmd.ExecuteReader();
            if (oku.Read())
            {
                Response.Write("<script>alert('Giriş Başarılı Yönlendiriliyorsunuz!!'); window.location = 'adminsayfa.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('Giriş Başarısız')</script>");
            }
            baglanti.Close();
        }
       
    }
}