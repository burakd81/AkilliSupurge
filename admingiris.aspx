<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admingiris.aspx.cs" Inherits="admingiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="tr">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Admin Giriş</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Raleway&display=swap');
html, body{
  background: url(https://images.unsplash.com/photo-1516557070061-c3d1653fa646?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80);
  background-size: cover;
  background-position: center center;
  font-family: 'Raleway' ,sans-serif;
  margin: 0;
  padding: 0;
  overflow: hidden;
}
.container{
  margin-top:150px;
  width: 100%;
  display:flex;
  justify-content:center;
}


.card{
  box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.3);
  border-radius: 5px;
  background: #1d1d1d;
  display:flex;
}

.form{
  padding:20px;
  flex-direction:column;
  height: 100%;
  width: 250px;
}

.form input{
  margin: 10px 0px;
  border: none;
  box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.3);
  border-radius: 5px;
  padding: 10px 20px;
  outline:none;
  background: #212121;
  color:#fff;
}

.form h3{
  text-align:center;
  color: #fff;
  text-shadow: 4px 4px 2px rgba(0, 0, 0, 0.3);
}

.right{
  border-radius: 0px 5px 5px 0px;
  height: 100%;
  width: 250px; 
  background:url(https://images.unsplash.com/photo-1501975558162-0be7b8ca95ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80);
  background-size:cover;
  background-position: center center;
  display: flex;
  justify-content: center;
  align-items:center;
}

.form .submit{
    cursor: pointer;
    position: relative;
    display: inline-block;
    padding: 10px 20px;
    margin: 30px 10px;
    font-size: 15px;
    color: #FDD835;
    text-decoration: none;
    text-transform: uppercase;
    transition: 0.5s;
    letter-spacing: 4px;
    overflow: hidden;
    margin-right: 50px;
   
}

.form .submit:hover{
    background: #FDD835;
    color: #050801;
    box-shadow: 0 0 5px #FDD835,
                0 0 25px #FDD835,
                0 0 50px #FDD835,
                0 0 200px #FDD835;
     -webkit-box-reflect:below 1px linear-gradient(transparent, #0005);
}
.form .submit:nth-child(1){
    filter: hue-rotate(270deg);
}
.form .submit:nth-child(2){
    filter: hue-rotate(110deg);
}
.form .submit span{
    position: absolute;
    display: block;
}
.form .submit span:nth-child(1){
    top: 0;
    left: 0;
    width: 100%;
    height: 2px;
    background: linear-gradient(90deg,transparent,#FDD835);
    animation: animate1 1s linear infinite;
}
@keyframes animate1{
    0%{
        left: -100%;
    }
    50%,100%{
        left: 100%;
    }
}
.form .submit span:nth-child(2){
    top: -100%;
    right: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(180deg,transparent,#FDD835);
    animation: animate2 1s linear infinite;
    animation-delay: 0.25s;
}
@keyframes animate2{
    0%{
        top: -100%;
    }
    50%,100%{
        top: 100%;
    }
}
.form .submit span:nth-child(3){
    bottom: 0;
    right: 0;
    width: 100%;
    height: 2px;
    background: linear-gradient(270deg,transparent,#FDD835);
    animation: animate3 1s linear infinite;
    animation-delay: 0.50s;
}
@keyframes animate3{
    0%{
        right: -100%;
    }
    50%,100%{
        right: 100%;
    }
}


.form a span:nth-child(4){
    bottom: -100%;
    left: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(360deg,transparent,#FDD835);
    animation: animate4 1s linear infinite;
    animation-delay: 0.75s;
}
@keyframes animate4{
    0%{
        bottom: -100%;
    }
    50%,100%{
        bottom: 100%;
    }
}

.right p{
  display:flex;
  color: #fff;
  font-size:12px;
}

.right a{
  color: #FDD835;
  margin:0px 5px;
  
}

.right a:hover{
  text-decoration: none;
}


.form .reg{
  display:flex;
  color: #fff;
  font-size:12px;
  display: none;
}

.form  a{
  color: #FDD835 ;
  margin:0px 5px ;
  font-size: 12px;
}

.form a:hover{
  text-decoration: none;
}


@media only screen and (max-width: 660px) {
  
  .card{
    display:flex;
    justify-content:center;
    align-items: center;
    text-align:center;
  }

  .form{
    display:flex;
    justify-content:center;
    align-items: center;
    text-align:center;
  }
  .right{
    display:none;
  }

  .form .reg{
    display: block;
    
  }
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
<div class="card">
<div class="form">
  <h3>Admin Girişi</h3>
  
    <asp:TextBox runat="server" CssClass="kaadicss" placeholder="kullanıcı adı" ID="kadi" />
  <asp:TextBox runat="server" CssClass="sifrecss" TextMode="Password" placeholder="Parola" ID="pass"/>
  <asp:Button Text="Giriş Yap" runat="server" CssClass="submit" OnClick="grsbtn_Click" />
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        
    
  
</div>

</div>
</div>
        
    </form>
</body>
</html>
