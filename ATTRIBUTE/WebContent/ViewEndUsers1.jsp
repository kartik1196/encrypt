<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attribute-based Encryption</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
          <h2>End Users  ::</h2>
          <div class="clr"></div>
        </div>
        <div class="mainbar">
          <div class="article" style="width:800px;">
            <table width="800" border="1" align="center">
              <tr>
                <td width="50" height="32"><div align="center"><span class="style1">User ID</span></div></td>
                <td width="150"><div align="center"><span class="style1">User Name </span></div></td>
                <td width="63"><div align="center"><span class="style1">Hospital </span></div></td>
                <td width="63"><div align="center"><span class="style1">Category </span></div></td>
                <td width="63"><div align="center"><span class="style1">Profession </span></div></td>
                <td width="63"><div align="center"><span class="style1">Key Assign </span></div></td>
              </tr>
              <%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13="";
	int i=0,j=0;

      	try 
	{
        
           String query="select * from user "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		
		s1=rs.getString(1);
		s2=rs.getString(2);		
		s6=rs.getString(7);
		s7=rs.getString(8);
		s8=rs.getString(9);
%>
              <tr>
                <td><div align="center"><%=s1%></div></td>
                <td><div align="center"><%=s2%></div></td>
                <td><div align="center"><%=s6%></div></td>
                <td><div align="center"><%=s7%></div></td>
                <td><div align="center"><%=s8%></div></td>
                <td><div align="center"><a href="keygen.jsp?id=<%=s1%>" >Assign</a></div></td>
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
            <p>&nbsp;</p>
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
