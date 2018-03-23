<%@page import="java.security.interfaces.RSAPublicKey"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String id=request.getParameter("id");
String fname=request.getParameter("fname");
String text=request.getParameter("text");
String oname=request.getParameter("oname");

System.out.println(id);
System.out.println(fname);
System.out.println(text);
System.out.println(oname);

	try 
{

   String query="update ownerfiles set att='"+text+"' where id='"+id+"' and fname='"+fname+"'"; 
   Statement st=connection.createStatement();
   int rs=st.executeUpdate(query);


	   String query1="update request set att='"+text+"' where owner='"+oname+"' and fname='"+fname+"'"; 
	   Statement st1=connection.createStatement();
	   int rs1=st1.executeUpdate(query1);
	   if(rs>0 & rs1>0){
			RequestDispatcher rd=request.getRequestDispatcher("ViewOwnerFiles.jsp");
			rd.include(request,response);
		}




   connection.close();
  }
 
  catch(Exception e)
  {
    out.println(e.getMessage());
  }

%>


</body>
</html>