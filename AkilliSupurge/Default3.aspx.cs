using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ClientServices;
using System.Data.SqlClient;
using System.Data.Sql;
public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void adresgonder_Click(object sender, EventArgs e)
    {
        DateTime dt;
        dt = DateTime.Now.AddDays(5);
        int tutar = Convert.ToInt32(adet.Text);
        int odenecek = 3990 * tutar;
        if (addtxt.Text==""&& adrestxt.Text=="" && telefontxt.Text=="" && iltxt.Text=="" && ilçetxt.Text=="") {
            Response.Write("<script>alert('Bütün kutuları doldurmanız gerekmektedir.')</script>");
        }
        else { 
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-TP4PKG8\\SQLEXPRESS;Initial Catalog=AkilliSupurge;Integrated Security=True");
        baglanti.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO MüsteriSiparis(AdSoyad,Adres,Telefon,Il,Ilçe,Adet,Fiyat) VALUES ('" + addtxt.Text + "','" + adrestxt.Text + "','" + telefontxt.Text + 
            "','" + iltxt.Text + "','" + ilçetxt.Text + "','"+tutar+"','"+odenecek+"','"+dt+"')", baglanti);
            string digersayfa = Convert.ToString(odenecek);
        cmd.ExecuteNonQuery();
        baglanti.Close();
        Response.Write("<script>alert('Satın Alma Bölümüne Yönlendiriliyorsunuz.')</script>");
           
            Response.Redirect("odeme.aspx?id="+digersayfa);
           
        }
        
        
    }



}