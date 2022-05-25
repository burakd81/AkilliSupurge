<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Satın Alma</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script>
        $('.datepicker').pickadate();
    </script>
    
<style>
    .satinalbtn{border-style: none;
        border-color: inherit;
        border-width: medium;
        position:absolute;width:100px;height:36px; 
        top:400px; left:47%; font:22px bold;color:black; background-color:orange; border-radius:3px; }
    .satinalbtn:hover{background-color:black;color:orange;}
    .order-form .container {
      color: #4c4c4c;
      padding: 20px;
      box-shadow: 0 0 10px 0 rgba(0, 0, 0, .1);
    }

    .order-form-label {
      margin: 8px 0 0 0;
      font-size: 14px;
      font-weight: bold;
    }

    .order-form-input {
      width: 100%;
      padding: 8px 8px;
      border-width: 1px !important;
      border-style: solid !important;
      border-radius: 3px !important;
      font-family: 'Open Sans', sans-serif;
      font-size: 14px;
      font-weight: normal;
      font-style: normal;
      line-height: 1.2em;
      background-color: transparent;
      border-color: #cccccc;
    }

    .btn-submit:hover {
      background-color: #090909 !important;
    }
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
 
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

.labelfeyk{
   font:bold 25px arial;
}
.labelgercek{
    font:bold 35px arial;
    color:green;
}

.ucretlbl{
            color:black;
            font:30px bold;
        }
.isimtxt{
                 width:300px;
                height:50px;
                font:20px bold;
                color:black;
            }
            .soyisimtxt{
                position:absolute;
                right:0;
                top:0;
                 width:300px;
                height:50px;
                font:20px bold;
                color:black;
            }
            .emailtxt{
                 width:300px;
                height:50px;
                font:20px bold;
                color:black;
            }
            .telefontxt{
                position:absolute;
                right:0;
                top:70px;
                 width:300px;
                height:50px;
                font:20px bold;
                color:black;
            }

</style>
</head>
<body><form  runat="server" method="post">
   <!--NAV BAŞLANGIÇ-->
    <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Default.aspx">LOGOOOO</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Default.aspx">Anasayfa</a></li>
    </ul>
  </div>
</nav>
    <!--NAV BİTİŞ-->


    <!--SLİDER BAŞLANGIÇ-->
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="assets/images/slider1.jpg" style="width:420px; position:absolute; top:120px; left:-30px;"/>
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="assets/images/slider2.jpg" style="width:420px; position:absolute; top:120px; left:-30px;"/>
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="assets/images/slider3.jpg" style="width:420px; position:absolute; top:120px; left:-30px;"/>
  <div class="text">Caption Three</div>
</div>

</div>
    
<br/>

<div style="text-align:center">
  <span class="dot" style="position:absolute;top:650px;left:300px;" ></span> 
  <span class="dot" style="position:absolute;top:650px;left:330px;"></span> 
  <span class="dot" style="position:absolute;top:650px; left:360px;"></span> 
</div>
    <!--SLİDER BİTİŞ-->

    <div style=" width:650px; height:380px; position:absolute; right:50px; top:250px; text-overflow:unset;">
        <h2 > <strong>Akıllı Süpürge</strong></h2>
        <br />
       <del> <strong><asp:Label Text="5.990.00 TL" runat="server" ID="labelfeyk" CssClass="labelfeyk" /></strong></del> 
       &nbsp;&nbsp;&nbsp;&nbsp; <strong> <asp:Label Text="3.990.00 TL" runat="server" ID="labelgercek" CssClass="labelgercek"/></strong>
        <br />
        <br />
        <span style="font:20px bold;"><strong>Öne Çıkan Bilgiler: </strong></span>
        <br />
        <br />
        <p style="font: 17px bold;">
        <span>Garanti Süresi:2 Yıl</span> &emsp;|&emsp;<span>Ses Seviyesi:31 Dba - 40 Dba</span><br/>
          <span>Güç(Watt):0 - 250 Watt</span> &emsp;|&emsp;<span>Özellik:Robot</span> </p>
        <div style="background-color:white; width:600px; height:120px;  ">
        
        
        <input type="button" name="name" value="-" onclick="azalt()" style="font:70px bold;  border:none; background-color:white; "  />
        
            <asp:TextBox runat="server" name="name" value="0" id="adet" style="width:200px; height:40px; text-align:center;" />
        <input type="button" name="name" value="+" onclick="arttir()" style="font:70px bold;  border:none; background-color:white;" />
        <asp:Label Text="0" id="ucretlbl" runat="server" CssClass="ucretlbl" />
        <span style="font:25px bold; color:black;" > TL</span>
    </div>

     
    </div>
 
    <div style=" background-color:white; position:absolute;top:750px; width:100%;"> 
      
        
  <section class="order-form my-4 mx-4">
    <div class="container pt-4">

      <div class="row">
        <div class="col-12">
          <h1 style="margin-left:30px; color:black;">ADRES BİLGİLERİ</h1>
          
          <hr class="mt-1"/>
        </div>
        <div class="col-12">

          <div class="row mx-4">
            <div class="col-12 mb-2">
              
            </div>
            <div class="col-12 col-sm-12">
                <span style="font:20px bold; color:black">Ad:</span>
                <asp:TextBox runat="server" class="order-form-input" ID="addtxt" placeholder="Ad" />
            </div>
           
          </div>

          
       
          

          <div class="row mt-3 mx-4">
            <div class="col-12">
              
            </div>
            <div class="col-lg-6">
                <span style="font:20px bold; color:black;">Adres:</span>
                <asp:TextBox runat="server" class="order-form-input" ID="adrestxt" placeholder="Adres" />
            </div>
            <div class="col-lg-6 mt-2">
                <span style="font:20px bold; color:black;">Telefon:</span>
                <asp:TextBox runat="server" class="order-form-input" ID="telefontxt" placeholder="Telefon" maxlength="11" TextMode="Phone" />
            </div>
            <div class="col-12 col-sm-6 mt-2 pl-sm-0">
                <span style="font:20px bold; color:black;">İl:</span>
                <asp:TextBox runat="server" class="order-form-input" ID="iltxt" placeholder="İl"  />
            </div>
            <div class="col-12 col-sm-6 mt-2 pr-sm-2">
              <span style="font:20px bold; color:black;">İlçe:</span>
                <asp:TextBox runat="server" class="order-form-input" ID="ilçetxt" placeholder="İlçe" />
            </div>
           
          </div>

            

          <div class="row mt-3">
            <div class="col-12">
                
                <asp:Button Text="Satın Al" id="satinalbtn" class="satinalbtn" runat="server" OnClick="adresgonder_Click" />
              
            </div>
          </div>

        </div>
      </div>
    </div>
  </section>
    </div>



   


 






    <script>
        function between(adet,min,max) {
            return adet >= min && adet <= max;
        }
        function arttir() {
              var value = parseInt(document.getElementById('adet').value, 10);
             value = isNaN(value) ? 0 : value;
            value++;
             if (between(value,0,50)) {
                
                 document.getElementById('adet').value = value;
                 
             }
       

            tut = carp(value);
            document.getElementById('ucretlbl').innerHTML = tut;
        }
                 function carp(carpim) {
             var tutar = 3990;
             tutar = tutar * carpim;

             return tutar;
        }
        function azalt() {
            var value = parseInt(document.getElementById('adet').value, 10);
             value = isNaN(value) ? 0 : value;
             value--;
             if (between(value,0,50)) {
                
                 document.getElementById('adet').value = value;
                 
             }
             yaz = carp(value);
                 document.getElementById('ucretlbl').innerHTML = yaz;
      
            
        }
       
    </script>
    
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // 2 saniyede değiştir
}
</script>
    </form>
</body>
</html>
