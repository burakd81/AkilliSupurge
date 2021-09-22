using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ClientServices;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class adminsayfa : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-TP4PKG8\\SQLEXPRESS;Initial Catalog=AkilliSupurge;Integrated Security=True");
    int siparis = 1;
    int mesaj = 1;
    int satilanurun = 1;
    int admin = 1;
    int ciro = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.UrlReferrer == null)

        {

            Response.Redirect("404NotFound.aspx");

        }
        baglanti.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from MüsteriSiparis", baglanti);
        siparis = Convert.ToInt32(cmd.ExecuteScalar());
        toplamsiparislbl.Text = siparis.ToString();
        SqlCommand cmd2 = new SqlCommand("select count(*) from Mesajlar", baglanti);
        mesaj = Convert.ToInt32(cmd2.ExecuteScalar());
        toplammesajlbl.Text = mesaj.ToString();
        SqlCommand cmd3 = new SqlCommand("select count(*) from Admin", baglanti);
        admin = Convert.ToInt32(cmd3.ExecuteScalar());
        toplamadminlbl.Text = admin.ToString();
        SqlCommand cmd4 = new SqlCommand("select sum(adet) from MüsteriSiparis", baglanti);
        satilanurun = Convert.ToInt32(cmd4.ExecuteScalar());
        satilanurunsayisilbl.Text = satilanurun.ToString();
        SqlCommand cmd5 = new SqlCommand("select sum(fiyat) from MüsteriSiparis", baglanti);
        ciro = Convert.ToInt32(cmd5.ExecuteScalar());
        toplamcirolbl.Text = ciro.ToString();
        SqlCommand cmd6 = new SqlCommand("SELECT * FROM MüsteriSiparis", baglanti);
        SqlDataReader oku = cmd6.ExecuteReader();
        while (oku.Read())
        {
            lstbx.Items.Add(oku[1] + "    |--|    " + oku[2] + "    |--|    " + oku[3] + "    |--|    " + oku[4] + "    |--|    " + oku[5] + "    |--|    " + oku[6] + "    |--|    " + oku[7] + "    |--|    " + oku[8] );
            lstbx.Items.Add("-------------------------------------------------------------------------------------------------------------------");


        }
        oku.Close();
        SqlCommand cmd7 = new SqlCommand("SELECT * FROM Mesajlar", baglanti);
        SqlDataReader oku2= cmd7.ExecuteReader();
        while (oku2.Read())
        {
            ListBox1.Items.Add(oku2[1] + "    |--|    " + oku2[2] + "    |--|    " + oku2[3] );
            ListBox1.Items.Add("-------------------------------------------------------------------------------------------------------------------");


        }

        baglanti.Close();
    }
}
