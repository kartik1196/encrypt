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

<style type="text/css">
<!--
.style1 {font-size: 18px}
.style4 {	font-size: 24;
	font-weight: bold;
	color: #666666;
}
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
          <h2><span>Encrypted Data  </span></h2>
          <div class="clr"></div>
        </div>
        <div class="mainbar">
          <div class="article">
            <h2><span>Encrypt Data </span> ::</h2>
            <p>&nbsp; </p>
            <%

      	try 
	{
      		String file=request.getParameter("tt");
      		String cont=request.getParameter("text");
			
      		String keys = "ef50a0ef2c3e3a5f";
      		String h1="";
      		String filename=request.getParameter("tt");
      		SimpleDateFormat sdfDate = new SimpleDateFormat(
					"dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat(
					"HH:mm:ss");

			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			String owner = (String) application.getAttribute("owner");
			String user = (String) application.getAttribute("user");
			String task="Upload";
			
			connection.createStatement().executeUpdate("insert into  ownerfiles(fname,owner,ct,dt) values ('"+file+"','"+owner+"','"+cont+"','"+dt+"')");
			String strQuery2 = "insert into transaction(user,fname,task,dt) values('"+user+"','"+file+"','"+task+"','"+dt+"')";
				connection.createStatement().executeUpdate(strQuery2);
				
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			String encryptedValue = new String(Base64.encode(cont.getBytes()));
      		
			String filenam = new String(Base64.encode(file.getBytes()));
			
      		PrintStream p = new PrintStream(new FileOutputStream("F:\\ATTRI\\"+filename));
			p.print(new String(cont));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream("F:\\ATTRI\\"+filename);
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
 
			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
 
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			h1 = bi1.toString(16);
			
      		
	
%>
            <form action="Upload1.jsp" method="post">
              <table width="598" border="1" align="center">
                <tr>
                  <td width="286"><span class="style4">File Name :- </span></td>
                  <td width="356"><input name="t42" type="text" id="t42" size="50" value="<%= filename %>" readonly="readonly" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><textarea name="text2" cols="50" rows="15" readonly="readonly"><%= encryptedValue %></textarea></td>
                </tr>

                <tr>
                  <td><div align="right"> </div></td>
                  <td><input type="submit" name="Submit2" value="Upload" /></td>
                </tr>
              </table>
            </form>
            <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
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
