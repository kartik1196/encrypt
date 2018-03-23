<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attribute-based Encryption</title>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random"%>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
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
.style8 {font-size: 24px}
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
<script type='text/javascript'>

function saveTextAsFile()
{
	var textToWrite = document.getElementById("textarea").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs = "File.txt";

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
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
		<p><%
		  	
		    	try 
				{
		  		String file = request.getParameter("t1");
				String user = request.getParameter("t2");
				String sk=request.getParameter("t13");
				
				System.out.println(file);
				System.out.println(user);
				System.out.println(sk);
				
				
				String keys = "ef50a0ef2c3e3a5f";
				String ct=null;
				String s1=null;
				String s2=null;
				String s3=null;
				String s4=null;
				application.setAttribute("file",file);
				application.setAttribute("sk",sk);
				
				byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			String filename = new String(Base64.encode(file.getBytes()));
				
				String strQuery = "select * from request where user='"+user+"' and fname='"+file+"' and  sk='"+sk+"'";
				String strQuery1 = "select * from cloudserver where fname='"+file+"'";
				
				ResultSet rs = connection.createStatement().executeQuery(strQuery);
				{
					if(rs.next()==true)
					{
						s1=rs.getString(2);
						s2=rs.getString(4);
						s3=rs.getString(5);
					ResultSet rs1 = connection.createStatement().executeQuery(strQuery1);
					{
					if(rs1.next()==true)
					{
						s4=rs1.getString(2);		
						ct=rs1.getString(4);
						//System.out.println(ct);
						byte[] keyValue1 = keys.getBytes();
      					Key key1 = new SecretKeySpec(keyValue1,"AES");
      					Cipher c1 = Cipher.getInstance("AES");
      					c1.init(Cipher.DECRYPT_MODE, key1);
      					String decryptedValue = new String(Base64.encode(ct.getBytes()));
				
						
			%></p>
          <h2><span>Encrypt File  ::  </span></h2>
          <div class="clr"></div>
        </div>
        <div class="article">
         
            <label>
            <p align="center" class="style8">File Contents</p>
            <label>
            <div align="center">
              <textarea name="text" id="textarea" cols="45" rows="17" value=""><%=decryptedValue%></textarea>
              <br/>
              <br/>
              <form action="verify.jsp" method="post">
              <input type="hidden" name="uname" value="<%=s1%>"/>
              <input type="hidden" name="fname" value="<%=s2%>"/>
              <input type="hidden" name="key" value="<%=s3%>"/>
              <input type="hidden" name="efname2" value="<%=s4%>"/>
              <input type="hidden" name="data" value="<%=ct%>"/>
              <input type="text" name="pass" required/>
              <input type="submit" name="Submit" value="Decrypt" /> <!-- onclick="saveTextAsFile()" --> 
              </form>
            </div>
            </label>
            <p align="left">
              <%	
					}
					else
					{
						
		%>
            </p>
            <p class="style8">File Doesn't Exist !!!</p>
            </p>
            <br />
            <p><a href="Download.jsp">Back</a></p>
            <%
					}
				}
	 			}else
					{
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
		
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
				
						String strQuery2 = "insert into attacker(user,fname,sk,dt) values('"+user+"','"+file+"','"+sk+"','"+dt+"')";
						connection.createStatement().executeUpdate(strQuery2);
						
		%>
            </p>
            <p class="style8">File Name / Secret Key Mismatch  !!!</p>
            <p class="style8">You Are An Attacker </p>
            </p>
            <br />
            <p><a href="Download.jsp">Back</a></p>
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

            </label>
         
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
