<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attribute-based Encryption</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
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
<style type="text/css">
<!--
.style1 {font-size: 18px}
.style3 {font-size: 24}
.style3 {font-size: 26px; }
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
          <h2>End Users Key Assign  ::</h2>
          <div class="clr"></div>
        </div>
        <div class="mainbar">
          <div class="article" style="width:800px;">
          <form action="keyassign.jsp" method="post">
            <table width="800" border="1" align="center">
              <tr>
                <td width="63"><div align="center"><span class="style1">Private Key </span></div></td>
                <td width="63"><div align="center"><span class="style1">Master Key </span></div></td>
                <td width="63"><div align="center"><span class="style1">Attribute(S) </span></div></td>
              </tr>
              <%
String a=request.getParameter("id");
      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13="";
	int i=0,j=0;
	
	 KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA"); 
	 Cipher encoder = Cipher.getInstance("RSA"); 
	 KeyPair kp = kg.generateKeyPair(); 
	 PublicKey pubKey = kp.getPublic(); 
	 
	 // RSA produces 1024 bits Key
	 
	byte[] pub = pubKey.getEncoded();
	String b = pub.toString();
	

	 KeyPairGenerator kg1 = KeyPairGenerator.getInstance("RSA"); 
	 Cipher encoder1 = Cipher.getInstance("RSA"); 
	 KeyPair kp1 = kg1.generateKeyPair(); 
	 PublicKey pubKey1 = kp1.getPublic(); 
	 
	 // RSA produces 1024 bits Key
	 
	byte[] pub1 = pubKey.getEncoded();
	String c = pub1.toString();	
	
	

      	try 
	{
        
           String query="select * from user where id='"+a+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	if ( rs.next() )
	   {
		
	
		s6=rs.getString(7);
		s7=rs.getString(8);
		s8=rs.getString(9);
		s9=s6+s7+s8;
%>
              <tr>
              <input type="hidden" name="id" value="<%=a %>" />
                <td><input type="text" name="pk" value="<%=b %>" /> </td>
				<td><input type="text" name="msk" value="<%=c %>" /> </td>
				<td><input type="text" name="att" value="<%=s9 %>" /> </td>
                <td><button>Assign</button></td>
              </tr>
              <%

	 
	   }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
            </table>
            </form>
            <p>&nbsp;</p>
             <p><a href="ViewEndUsers1.jsp">BACK</a></p> 
          </div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>AUTHORITY </span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu"><li><a href="DataOwnerLogin.html"></a></li>
            <li><a href="GenerateKey.jsp">GENERATE SECRET KEY </a></li>
            <li><a href="ViewEndUsers1.jsp">VIEW END USERS </a></li>
            <li><a href="ViewAttackers1.jsp">VIEW ATTACKERS </a></li>
            <li><a href="index.html">LOG OUT</a></li>
            </ul>
        </div>
      </div>
      <div class="clr">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      </div>
    </div>
  </div>

</div>
<div align=center></div>
</body>
</html>
