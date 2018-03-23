<title>Login |User</title><%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>


<%
	
					String uname=request.getParameter("userid");     
        			String pass=request.getParameter("pass"); 	
					String email=request.getParameter("email"); 
					String mno=request.getParameter("mobile"); 
					String gender=request.getParameter("gender");     
        			String hos=request.getParameter("hos"); 	
					String cat=request.getParameter("cat"); 
					String pro=request.getParameter("pro"); 

					
					
				
						
					try {
						 			
						
				//		ps.setString(11,sk);		
						String query1="select * from owner where name='"+uname+"'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		out.print("User Name Already Exist");
							
							%>
							<p><a href="DataOwner.html">Back</a>         <a href="index.html">Home</a> </p>
				
							
							<%
					   }
					   else
					   {
						   PreparedStatement ps=connection.prepareStatement("insert into owner(name,pass,email,mobile,gender,hospital,category,profession) values(?,?,?,?,?,?,?,?)");
							ps.setString(1,uname);
							ps.setString(2,pass);
							ps.setString(3,email);	
							ps.setString(4,mno);
							ps.setString(5,gender);
							ps.setString(6,hos);
							ps.setString(7,cat);	
							ps.setString(8,pro);
						int x=ps.executeUpdate();
						if(x>0){
							request.setAttribute("msg","successfull");
							out.print("Registered Successfully");
							
			%>
			<p><a href="DataOwner.html">Back</a>         <a href="index.html">Home</a> </p>

			
			<%
					}
						}
						} 
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
				%>
