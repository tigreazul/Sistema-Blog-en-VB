<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="product.aspx.vb" Inherits="CAPA_PRESENTACION.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
  <title>Title</title>
  
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="keywords" content=""/>
  <meta name="description" content=""/>  
  <meta name="robots" content="index, follow" />
 
  <link rel="stylesheet" type="text/css" href="css/style.css" />

  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.cycle.all.js"></script>
  <script type="text/javascript" src="js/functions.js"></script>
  <script type="text/javascript">
  $('#promo-large-banners #slide-show').cycle({
    fx:     'fade', 
    height: 300,
    timeout: 10000, 
    pager:  '#slides-pager .position' 
  });
  </script>
</head>
<body>
    <form id="form1" runat="server">
<div id="top">

  <div id="header">
    <div id="header-top">
      <div id="wrap-logo">
        <a href="1_homepage.html"><img src="images/logo.png" alt="" /></a>
      </div>
      <div id="wrap-header-info">
      
            <div id="work-hours">
          <div class="white-line">Para comprar o ayuda llamar<strong>01-2345-6789</strong></div>
          <div class="pink-line">De martes a domingo 10 a.m.-7 p.m.</div>
        </div>
      </div>
    </div>
    <div id="header-bottom">
      <ul id="header-menu">
        <li><a href="index.html" class="active">HOME</a></li>
        <li><a href="index.html" class="inactive special">OFERTAS ESPECIALES!</a></li>
        <li><a href="index.html" class="inactive">¿CÓMO COMPRAR?</a></li>
        <li><a href="index.html" class="inactive">¿CÓMO PUEDO PAGAR?</a></li>
        <li><a href="index.html" class="inactive">FAQ</a></li>
        <li><a href="index.html" class="inactive">CONTACTANOS</a></li>
     
      </ul>
      <div id="search">
          <div style="float: left;"><input class="nice_search" type="text" name="search" value="Buscar producto..." /></div>
          <div style="float: left;"><input class="nice_submit" type="submit" name="submit_search" value="" /></div>
      </div>
    </div>
  </div>
</div>
<div id="wrap-content">
  <div id="breadcrumb">
    <a href="#" class="breadcrumbHome">Inicio</a><span class="seperator"> &nbsp; </span><a href="#">Computers</a><span class="seperator"> &nbsp; </span><a href="#">Laptops</a><span class="seperator"> &nbsp; </span><span>Dell</span>
  </div>
  <div id="promo-large-banners">
    <div id="slides-pager">
      <div class="position">
      </div>
    </div>
    <div id="slide-show">
      <a href="index.html"><img src="images/slideshowlarge1.jpg" alt="" /></a>
      <a href="index.html"><img src="images/slideshowlarge2.jpg" alt="" /></a>
      <a href="index.html"><img src="images/slideshowlarge3.jpg" alt="" /></a>
    </div>
  </div>
  <div id="main-content">
    <div id="left-column">
      <div id="wrap-categories">
        <div class="wrap-title-black">
          <h2 class="nice-title">CATEGORÍAS</h2>
          <div class="expanded"></div>
        </div>
    <ul id="category-menu">
          <li>
            <asp:DataList ID="DataList2" runat="server" DataKeyField="COD_CAT" 
                  DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    
                    <asp:HyperLink ID="HyperLink2" runat="server" 
                        NavigateUrl='<%# Eval("COD_CAT") %>' Text='<%# Eval("DESCRIPCION") %>'></asp:HyperLink>
                    
                </ItemTemplate>
              </asp:DataList>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:DB_BLOGConnectionString %>" 
                  SelectCommand="SELECT [COD_CAT], [DESCRIPCION] FROM [T_CATEGORIA] ORDER BY [DESCRIPCION]">
              </asp:SqlDataSource>
          </li>
        </ul>
      </div>
       <div class="left-block">
        <h2 class="nice-title2">BOLETÍN</h2>
        <div class="block-content">
            <p class="info">Suscríbase a nuestro boletín semanal y mantenerse al día con las últimas ofertas y nuevos productos.</p>
            <p><input id="newsletter-value" class="nice-i" type="text" name="newsletter-email" value="Enter your email" /></p>
            <p><input class="nice-s" type="submit" name="newsletter-submit" value="SUBMIT" /></p>
        </div>
      </div>
          <div class="left-block">
        <h2 class="nice-title2">ATENCIÓN AL CLIENTE</h2>
        <div class="block-content" style="padding: 0px; width: 230px;">
          <p class="support"><a href="#">Email Ayuda</a></p>
          <p class="support"><a href="#">FAQs</a></p>
          <p class="support" style="border-bottom: 0px;"><span>Call 1-800-123-4567</span></p>
        </div>
      </div>
      <div class="left-block">
        <div class="block-content2">
          <img src="images/paypal-cards.jpg" alt="paypal cards" />
        </div>
      </div>
    </div>
    <div id="right-column">
      <div id="content">
        <div id="wrap-featured-products">
          <div class="wrap-title-black round">
            <h1 class="nice-title">PRODUCTOS DESTACADOS</h1><div class="list-type"><p>View as:</p><p><a href="1_homepage.html"><img src="images/list-type-row.png" alt="" /></a><a href="2_homepage.html"><img src="images/list-type-block.png" alt="" /></a></p></div>
          </div>
          <ul id="block-product-list">
            <li>
                    <asp:DataList 
                        ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                        RepeatColumns="3" CellPadding="10" Font-Bold="False" 
                        Font-Italic="False" Font-Names="Arial" Font-Overline="False" 
                        Font-Strikeout="False"  
                        ForeColor="#666666" HorizontalAlign="Center" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <div class="product-name">
                            <h2>
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl='<%# Eval("COD_PRODUCTO") %>' Text='<%# Eval("NOM_PROD") %>'></asp:HyperLink>
                            <h2>
                         </div>
                        <div class="product-photo">
                        
                        <a href="<%# Eval("COD_PRODUCTO") %>">
                        <asp:Image ID="Image1" runat="server" AlternateText='<%# Eval("NOM_PROD") %>' 
                            Height="200px" ImageUrl='<%# Eval("IMAGEN", "~/images/producto/{0}") %>' 
                            Width="200px" /></a>
                        </div>
                        
                         <div class="product-info">
                            <div class="first-row">
                                <div class="oldprice">Stock: 
                                    <span><asp:Label ID="STOCKLabel" runat="server" Text='<%# Eval("STOCK") %>' /></span>
                                </div>
                                <div class="details"><a href="<%# Eval("COD_PRODUCTO") %>">Detalles</a></div>
                             </div>
                            <div class="second-row">
                                 <div class="price">
                                    <asp:Label ID="PRECIOLabel" runat="server" Text='<%# Eval("PRECIO","$ {0}") %>' />
                                 </div>
                            </div>
                        </div>
                    </ItemTemplate>
                        <SelectedItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                            Font-Strikeout="False" Font-Underline="False" />
                        <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Names="Algerian" 
                            Font-Overline="False" Font-Size="Larger" Font-Strikeout="False" 
                            Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:DataList>
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DB_BLOGConnectionString %>" 
                        
                        SelectCommand="SELECT [COD_PRODUCTO], [NOM_PROD], [PRECIO], [STOCK], [IMAGEN] FROM [T_PRODUCTO]">
                    </asp:SqlDataSource>
                
                
            </li>
          </ul>
          <div id="wrap-pages" class="round">
            <div class="left">Page 2 of 16</div>
            <div class="right">
              <a href="index.html" class="previous-button"></a> 
              <a href="index.html">1</a>
              <a href="index.html">2</a>
              <a href="index.html" class="active">3</a>
              <a href="index.html">4</a>
              <a href="index.html">5</a>
              <a href="index.html">6</a>
              <a href="index.html" style="border: 0px;">7</a>
              <a href="index.html" class="next-button"></a> 
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div id="footer">
  <div id="wrap-footer-links">
    <div id="footer-links">
      <div class="wrap-links">
        <h3>ORDEN DE APOYO</h3>
        <ul>
          <li><a href="index.html">Estado del pedido</a></li>
          <li><a href="index.html">Envío &amp; recoger en tienda</a></li>
          <li><a href="index.html">Órdenes Internacionales</a></li>
          <li><a href="index.html">Devoluciones &amp; reembolsos</a></li>
          <li><a href="index.html">Servicio al Cliente</a></li>
        </ul>
      </div>
      <div class="wrap-links">
        <h3>SOPORTE DE PRODUCTO</h3>
        <ul>
          <li><a href="index.html">Orden de manutención</a></li>
          <li><a href="index.html">Estado del pedido</a></li>
          <li><a href="index.html">Envío &amp; recoger en tienda </a></li>
          <li><a href="index.html">Órdenes Internacionales</a></li>
          <li><a href="index.html">Recoger en tienda</a></li>
          <li><a href="index.html">Devoluciones &amp; reembolsos</a></li>
          <li><a href="index.html">Servicio al Cliente</a></li>
        </ul>
      </div>
      <div class="wrap-links">
        <h3>TARJETAS VIRTUAL</h3>
        <ul>
          <li><a href="index.html">Aplicar ahora</a></li>
          <li><a href="index.html">Hacer un Pago</a></li>
          <li><a href="index.html">Beneficios de la tarjeta</a></li>
        </ul>
        <h3 style="margin-top: 10px;">PROGRAMA VIRTUAL</h3>
        <ul>
          <li><a href="index.html">Más información</a></li>
          <li><a href="index.html">Controle sus puntos</a></li>
        </ul>
      </div>
      <div class="wrap-links">
        <h3>LEGAL</h3>
        <ul>
          <li><a href="index.html">Conditions of Use</a></li>
          <li><a href="index.html">Advertencia Legal</a></li>
          <li><a href="index.html">Política de Privacidad</a></li>
          <li><a href="index.html">Derechos de privacidad</a></li>
          <li><a href="index.html">Garantías de ajustes de precios</a></li>
        </ul>
      </div>
    </div>
  </div>
  <div id="wrap-bottom">
    <div id="bottom">
      <p class="left">2012 Webmaster JTello - All rights reserved.</p>
      <div class="right"><p>Follow Us:</p><p><a href="index.html"><img src="images/skype-icon.png" alt="" /></a><a href="index.html"><img src="images/twiter-icon.png" alt="" /></a><a href="#"><img src="images/fb-icon.png" alt="" /></a></p></div>
    </div>
  </div>
</div>
    </form>
</body>
</html>