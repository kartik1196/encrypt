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
String pk=request.getParameter("pk");
String msk=request.getParameter("msk");
String att=request.getParameter("att");

System.out.println(pk);
System.out.println(msk);
System.out.println(att);


	try 
{

   String query="update user set pk='"+pk+"', msk='"+msk+"', att='"+att+"' where id='"+id+"' "; 
   Statement st=connection.createStatement();
   int rs=st.executeUpdate(query);
if ( rs>0 )
{

	RequestDispatcher rd=request.getRequestDispatcher("ViewEndUsers1.jsp");
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