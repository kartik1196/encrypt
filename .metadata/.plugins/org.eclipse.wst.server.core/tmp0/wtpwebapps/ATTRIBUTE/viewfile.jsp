<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex, nofollow">
  <meta name="googlebot" content="noindex, nofollow">
  <meta name="viewport" content="width=device-width, initial-scale=1">



<title>Attribute-based Encryption</title>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
  <script type="text/javascript" src="js/jquery.min.js"></script> 
<style type="text/css">
<!--
.style1 {font-size: 18px}
.style5 {font-size: 24px}
-->
</style>





<script type='text/javascript'>//<![CDATA[
$(window).load(function(){
$('.check').click(function(){
    $("#text").val('');
    $(".check").each(function(){
        if($(this).prop('checked')){
            
            $("#text").val($("#text").val()+$(this).val());
        }
    });
});
});//]]> 

</script>

  
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
          <h2><span>View Owner Files    </span>::</h2>
          <div class="clr"></div>
        </div>
        <div class="mainbar">
          <div class="article">



<%
String id=request.getParameter("id");
String fname=request.getParameter("fname");
String oname=request.getParameter("oname");
%>
<label style="font-size: 20px;">Hospital <label style="color: red;">(Select any One)</label></label><br><br>
<div>
<b>Hospital A<input type="checkbox" name="a" class="check" value="Hospital A"></b>
<b>Hospital B<input type="checkbox" name="b" class="check" value="Hospital B"></b>
<b>Hospital C<input type="checkbox" name="c" class="check" value="Hospital C"></b>
</div>
<br><br>
<label style="font-size: 20px;">Category <label style="color: red;">(Select any One)</label></label><br><br>
<div>
<b>Doctor<input type="checkbox" name="d" class="check" value="Doctor"></b>
<b>Nurse<input type="checkbox" name="e" class="check" value="Nurse"></b>
</div>
<br><br>
<label style="font-size: 20px;">Position <label style="color: red;">(Select any One)</label></label><br><br>
<div>
<b>Cardiologist<input type="checkbox" name="f" class="check" value="Cardiologist"></b>
<b>Neurologist<input type="checkbox" name="g" class="check" value="Neurologist"></b>
<b>Physiologist<input type="checkbox" name="h" class="check" value="Physiologist"></b>
<b>Dentist<input type="checkbox" name="i" class="check" value="Dentist"></b>
<b>Dermatologist<input type="checkbox" name="j" class="check" value="Dermatologist"></b>
</div>


<br><br>
<form action="viewassign.jsp" method="post">
<table>
<tr>
<td>Selected:</td>
<input type="hidden" name="id" value="<%=id %>" >
<input type="hidden" name="fname" value="<%=fname %>" >
<input type="hidden" name="oname" value="<%=oname %>" >
<td><input type="text" name="text" id="text" required></td>

</tr>
<tr>
<td><button>Assign</button></td>
</tr>
</table>
  </form>
<p>
		    <p>&nbsp;  </p>
		     <p><a href="ViewOwnerFiles.jsp">BACK</a></p> 
		    <p>&nbsp;</p>
          </div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Data Owner </span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu"><li><a href="DataOwnerMain.html">UPLOAD DATA </a></li>
            <li><a href="ViewOwnerFiles.jsp">VIEW FILES </a></li>
            <li><a href="ViewSecretKey.jsp">VIEW SK GENERATED </a></li>
            <li><a href="index.html">LOGOUT</a></li>
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
