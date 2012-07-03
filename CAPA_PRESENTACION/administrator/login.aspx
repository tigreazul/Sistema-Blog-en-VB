<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="CAPA_PRESENTACION.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   	<title>Light life Admin Panel | Login</title>
	<meta name="description" content="">   
    <link rel="stylesheet" href="../css/validationEngine.jquery.css" type="text/css" media="screen"  />	<link rel="stylesheet" href="../css/login.css" type="text/css" media="screen"  />    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Cuprum" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
    <script src="../js/lib/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>    <script src="../js/lib/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8"></script>    <script>
            jQuery(document).ready(function(){
                // binds form submission and fields to the validation engine
                jQuery("#form-login").validationEngine();
            });
 </script>	<!--[if lt IE 9]>	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>	<![endif]--><meta charset="UTF-8" />

</head>
<body>
     <section id="form">     <form id="formLogin" runat="server">

     <div id="content-header">
        <p id="logo">Administrador</p>
        <p>Panel de administrador</a></p>
     </div> 

     		<div id="content">
                <asp:TextBox ID="req" name="username" runat="server" CssClass="validate[required] text-input" placeholder="Usuario"></asp:TextBox>
                <br><br>
                <asp:TextBox ID="pass" name="pass" runat="server" CssClass="validate[required] text-input" placeholder="Contraseña"></asp:TextBox>
                <br>

               
                 <div class="buttons">
                 <!--<input type="submit" class="button-a gray" value="Forgot your password?">-->
                 <asp:Button ID="Button1" name="go" runat="server" Text="ENTRAR" CssClass="button-a blue" />
                 </div>
          </div>

		</form>
  </section>





</body>
</html>
