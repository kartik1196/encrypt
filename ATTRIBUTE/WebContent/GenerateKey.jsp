<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attribute-based Encryption</title>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
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
.style4 {	font-size: 24;
	font-weight: bold;
	color: #666666;
}
.style11 {font-size: 16px; font-weight: bold; color: #666666; }
-->
</style>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}

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
          <h2><span>Generate Secret Key ::  </span></h2>
          <div class="clr"></div>
        </div>
        <div class="article">
          <form id="form1" name="form1" method="post" action="">
            <p>&nbsp;</p>
            <table width="625" border="1" align="center">
              <tr>
                <td width="60" height="30"><div align="center"><span class="style11">User ID </span></div></td>
                <td width="97"><div align="center"><span class="style11">User Name </span></div></td>
				<td width="97"><div align="center"><span class="style11">Owner Name </span></div></td>
                <td width="126"><div align="center"><span class="style11">File Name </span></div></td>
                <td width="160"><div align="center"><span class="style11">Secret Key </span></div></td>
                <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        	
      		String query="select * from request"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		
		%>
              </tr>
              <tr>
                <td height="28"><div align="center"><%=i%></div></td>
                <td><div align="center"><%=s2%></div></td>
                <td><div align="center"><%=s3%></div></td>
				<td><div align="center"><%=s4%></div></td>
                <%	
			if(s5.equalsIgnoreCase("Generate Key"))
			{
			
		%>
                <td><div>
                  <div align="center"><a href="GenerateKey1.jsp?usid=<%=i%>"><%=s5%></a></div>
                </div></td>
              </tr>
              <%
		
			}else
			{
		%>  <td><div><div align="center"><%=s5%></div>
                </div></td>
              </tr>
			  
			  <%
			  }
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
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="KDCMain.html">BACK</a></p>
          </form>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>KDC  </span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            
            <li><a href="GenerateKey.jsp">GENERATE SECRET KEY </a></li>
            <li><a href="ViewEndUsers1.jsp">VIEW END USERS </a></li>
            <li><a href="ViewAttackers1.jsp">VIEW ATTACKERS </a></li>
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