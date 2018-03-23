<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attribute-based Encryption</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 18px}
.style5 {font-size: 16px}
.style6 {font-size: 14px}
.style2 {font-size: 24}
-->
</style>

</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">

        <h1 class="style1"><a href="index.html">Attribute-based Encryption</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="DataOwner.html">DATA OWNER</a></li>
          <li><a href="CloudServer.html">CLOUD SERVER</a></li>
          <li><a href="KDC.html">AUTHORITY</a></li>
          <li><a href="EndUser.html">END USER</a></li>
        </ul>
      </div>

    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Download File  ::  </span></h2>
          <div class="clr"></div>
        </div>
        <div class="article">
		<%String user =(String) application.getAttribute("user");%>
          <form id="form" name="form1" method="post" action="Download1.jsp">
            <label>
            <div class="article">
              <h2><span class="style2">Enter File Name &amp; Secret Key  </span>:: </h2>
              <p>&nbsp;</p>
              <table width="478" border="0" align="center">
                <tr>
                  <td><span class="style6">User Name :-</span></td>
                  <td><label>
                    <input required="required" name="t2" type="text" value="<%=user%>" size="40" />
                  </label></td>
                </tr>
                <tr>
                  <td><span class="style6">Enter File Name :-</span></td>
                  <td><label>
                    <input required="required" name="t1" type="text" value="" size="40" />
                  </label></td>
                </tr>

                <tr>
                  <td width="223"><span class="style6">Secret Key :-</span></td>
                  <td width="245"><input required name="t13" type="text" size="40" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><div align="right"></div></td>
                  <td><label>
                    <input type="submit" name="Submit" value="DOWNLOAD" />
                  </label></td>
                </tr>
              </table>
            </div>
            </label>
                    </form>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>End User   </span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="Request.jsp">REQUEST SECRET KEY</a></li>
            <li><a href="SecretKey.jsp">FIND SERCET KEY</a></li>
            <li><a href="Download.jsp">DOWNLOAD </a></li>
            <li><a href="index.html">LOG OUT</a></li>
            </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
 
</div>
<div align=center></div>
</body>
</html>
