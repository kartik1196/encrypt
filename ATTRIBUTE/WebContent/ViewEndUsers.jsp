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
          <div class="article">
            <table width="654" border="1" align="center">
              <tr>
               
                <td width="111"><div align="center"><span class="style1">User Name </span></div></td>
                <td width="76"><div align="center"><span class="style1">DOB</span></div></td>
                <td width="115"><div align="center"><span class="style1">E-Mail</span></div></td>
                <td width="87"><div align="center"><span class="style3">Mobile</span></div></td>
                
              </tr>
              <%

      	
	String s2="",s3="",s4="",s5="";
	int i=0,j=0;

      	try 
	{
        
           String query="select * from user "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
	
		s2=rs.getString(2);
		
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		
%>
              <tr>
                
                <td><div align="center"><%=s2%></div></td>
                <td><div align="center"><%=s3%></div></td>
                <td><div align="center"><%=s4%></div></td>
                <td><div align="center"><%=s5%></div></td>
                
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
          <h2 class="star"><span>Cloud Server </span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu"><li><a href="DataOwnerLogin.html"></a></li>
            <li><a href="ViewCloudFiles.jsp">VIEW CLOUD FILES</a></li>
            <li><a href="ViewSK.jsp">VIEW SECRET KEY GENERATED </a></li>
            <li><a href="ViewEndUsers.jsp">VIEW END USERS </a></li>
            <li><a href="ViewDataOwners.jsp">VIEW DATA OWNERS </a></li>
            <li><a href="ViewTransaction.jsp">VIEW TRANSACTION </a></li>
            <li><a href="ViewAttackers.jsp">VIEW ATTACKERS</a></li>
            <li><a href="index.html">LOGOUT</a><a href="ViewAttackers.jsp"></a></li>
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
