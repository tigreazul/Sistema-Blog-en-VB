<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="CAPA_PRESENTACION.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
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
<div id="top">

  <div id="header">
    <div id="header-top">
      <div id="wrap-logo">
        <a href="Default.aspx"><img src="images/logo.png" alt="" /></a>
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
        <form id="search-form" action="#" method="post">
          <div style="float: left;"><input class="nice_search" type="text" name="search" value="Buscar producto..." /></div>
          <div style="float: left;"><input class="nice_submit" type="submit" name="submit_search" value="" /></div>
        </form>
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
          <li><a href="index.html">Placa / Motherboard</a></li>
          <li><a href="index.html">Notebook / Laptops</a></li>
          <li><a href="index.html">Impresoras</a></li>
          <li>
            <a href="indexhtml" class="extends">Procesadores</a>
            <ul class="subcategory">
              <li><a href="index.html">Lorem ipsum dolor</a></li>
      
            </ul>
          </li>
          <li><a href="indexhtml">Impresoras</a></li>
          <li><a href="indexhtml">Software's</a></li>
          <li><a href="indexhtml">Monitores</a></li>
          <li><a href="indexhtml">Cd Rw / Dvd / Blu Ray</a></li>
        </ul>
      </div>
       <div class="left-block">
        <h2 class="nice-title2">BOLETÍN</h2>
        <div class="block-content">
          <form id="newsletter-form" action="#" method="post">
            <p class="info">Suscríbase a nuestro boletín semanal y mantenerse al día con las últimas ofertas y nuevos productos.</p>
            <p><input id="newsletter-value" class="nice-i" type="text" name="newsletter-email" value="Enter your email" /></p>
            <p><input class="nice-s" type="submit" name="newsletter-submit" value="SUBMIT" /></p>
          </form>
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
              <div class="product-name">
                <h2><a href="index.html">Samsung 2333HD 23" Widescreen 1080p LCD HDTV / Monitor</a></h2>
              </div>
              <div class="product-photo"><a href="index.html"><img src="images/product-image-small.jpg" alt="" /></a></div>
              <div class="product-info">
                <div class="first-row">
                  <div class="oldprice">Precio: <span>$139.99</span></div>
                  <div class="details"><a href="index.html">Detalles</a></div>
                </div>
                <div class="second-row">
                  <div class="price">$35.99</div>
                   
                </div>
              </div>
            </li>
            <li class="middle">
              <div class="product-name">
                <h2><a href="index.html">Samsung 2333HD 23" Widescreen 1080p LCD HDTV / Monitor</a></h2>
              </div>
              <div class="product-photo"><a href="index.html"><img src="images/product-image-small.jpg" alt="" /></a></div>
              <div class="product-info">
                <div class="first-row">
                  <div class="oldprice">Precio: <span>$139.99</span></div>
                  <div class="details"><a href="index.html">Detalles</a></div>
                </div>
                <div class="second-row">
                  <div class="price">$35.99</div>
                   
                </div>
              </div>
            </li>
            <li>
              <div class="product-name">
                <h2><a href="index.html">Samsung 2333HD 23" Widescreen 1080p LCD HDTV / Monitor</a></h2>
              </div>
              <div class="product-photo"><a href="index.html"><img src="images/product-image-small.jpg" alt="" /></a></div>
              <div class="product-info">
                <div class="first-row">
                  <div class="oldprice">Precio: <span>$139.99</span></div>
                  <div class="details"><a href="index.html">Detalles</a></div>
                </div>
                <div class="second-row">
                  <div class="price">$35.99</div>
                   
                </div>
              </div>
            </li>
            <li>
              <div class="product-name">
                <h2><a href="index.html">Samsung 2333HD 23" Widescreen 1080p LCD HDTV / Monitor</a></h2>
              </div>
              <div class="product-photo"><a href="index.html"><img src="images/product-image-small.jpg" alt="" /></a></div>
              <div class="product-info">
                <div class="first-row">
                  <div class="oldprice">Precio: <span>$139.99</span></div>
                  <div class="details"><a href="index.html">Detalle</a></div>
                </div>
                <div class="second-row">
                  <div class="price">$35.99</div>
                   
                </div>
              </div>
            </li>
            <li class="middle">
              <div class="product-name">
                <h2><a href="index.html">Samsung 2333HD 23" Widescreen 1080p LCD HDTV / Monitor</a></h2>
              </div>
              <div class="product-photo"><a href="index.html"><img src="images/product-image-small.jpg" alt="" /></a></div>
              <div class="product-info">
                <div class="first-row">
                  <div class="oldprice">Precio: <span>$139.99</span></div>
                  <div class="details"><a href="index.html">Detalle</a></div>
                </div>
                <div class="second-row">
                  <div class="price">$35.99</div>
                   
                </div>
              </div>
            </li>
            <li>
              <div class="product-name">
                <h2><a href="index.html">Samsung 2333HD 23" Widescreen 1080p LCD HDTV / Monitor</a></h2>
              </div>
              <div class="product-photo"><a href="index.html"><img src="images/product-image-small.jpg" alt="" /></a></div>
              <div class="product-info">
                <div class="first-row">
                  <div class="oldprice">Precio: <span>$139.99</span></div>
                  <div class="details"><a href="index.html">Detalle</a></div>
                </div>
                <div class="second-row">
                  <div class="price">$35.99</div>
                   
                </div>
              </div>
            </li>
            <li>
              <div class="product-name">
                <h2><a href="index.html">Samsung 2333HD 23" Widescreen 1080p LCD HDTV / Monitor</a></h2>
              </div>
              <div class="product-photo"><a href="index.html"><img src="images/product-image-small.jpg" alt="" /></a></div>
              <div class="product-info">
                <div class="first-row">
                  <div class="oldprice">Precio: <span>$139.99</span></div>
                  <div class="details"><a href="index.html">Details</a></div>
                </div>
                <div class="second-row">
                  <div class="price">$35.99</div>
              
                </div>
              </div>
            </li>
            <li class="middle">
              <div class="product-name">
                <h2><a href="index.html">Samsung 2333HD 23" Widescreen 1080p LCD HDTV / Monitor</a></h2>
              </div>
              <div class="product-photo"><a href="index.html"><img src="images/product-image-small.jpg" alt="" /></a></div>
              <div class="product-info">
                <div class="first-row">
                  <div class="oldprice">Precio: <span>$139.99</span></div>
                  <div class="details"><a href="index.html">Details</a></div>
                </div>
                <div class="second-row">
                  <div class="price">$35.99</div>
     
                </div>
              </div>
            </li>
            <li>
              <div class="product-name">
                <h2><a href="index.html">Samsung 2333HD 23" Widescreen 1080p LCD HDTV / Monitor</a></h2>
              </div>
              <div class="product-photo"><a href="index.html"><img src="images/product-image-small.jpg" alt="" /></a></div>
              <div class="product-info">
                <div class="first-row">
                  <div class="oldprice">Precio: <span>$139.99</span></div>
                  <div class="details"><a href="index.html">Detalles</a></div>
                </div>
                <div class="second-row">
                  <div class="price">$35.99</div>
      
                </div>
              </div>
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
      <p class="left">2012 Riostudiocreativo- All rights reserved.</p>
      <div class="right"><p>Follow Us:</p><p><a href="index.html"><img src="images/skype-icon.png" alt="" /></a><a href="index.html"><img src="images/twiter-icon.png" alt="" /></a><a href="#"><img src="images/fb-icon.png" alt="" /></a></p></div>
    </div>
  </div>
</div>
</body>
</html>