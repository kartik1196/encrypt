/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.79
 * Generated at: 2018-03-23 02:04:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;
import java.util.*;
import java.util.*;
import java.security.Key;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.util.encoders.Base64;
import java.sql.*;
import java.util.Random;
import java.io.PrintStream;
import java.io.FileOutputStream;
import java.io.FileInputStream;
import java.security.DigestInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.io.BufferedInputStream;
import java.security.Key;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import javax.crypto.Cipher;
import java.util.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.PrintStream;

public final class ViewCloudFiles_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/connect.jsp", Long.valueOf(1519289292650L));
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<title>Attribute-based Encryption</title>\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("<title>Attribute-based Encryption</title>\r\n");
      out.write("\r\n");

	Connection connection = null;
 	try {
     	// ORACLE DBASE CONECTIVITY
		/*
      	Class.forName("oracle.jdbc.driver.OracleDriver");
      	DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		connection =  DriverManager.getConnection ("jdbc:oracle:thin:@localhost:1521:insurance","scott", "tiger");   
	
      	//MY SQL DBASE CONNECTIVITY 

       	Class.forName("com.mysql.jdbc.Driver");
       	Connection=DriverManager.getConnection("jdbc:mysql://localhost:5053/AMES");

		*/

  		// MS ACCESS and MYSQL DBASE CONNECTIVITY

	  	Class.forName("com.mysql.jdbc.Driver");	
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/audithos","root","password");
      	String sql="";

	}
	catch(Exception e)
	{
		System.out.println(e);
	}

      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/coin-slider.css\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/cufon-yui.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/cufon-ptsans.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-1.4.2.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/script.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/coin-slider.min.js\"></script>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write(".style1 {font-size: 18px}\r\n");
      out.write(".style5 {font-size: 24px}\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"main\">\r\n");
      out.write("  <div class=\"header\">\r\n");
      out.write("    <div class=\"header_resize\">\r\n");
      out.write("      <div class=\"logo\">\r\n");
      out.write("\r\n");
      out.write("        <h1 class=\"style1\"><a href=\"index.html\">Attribute-based Encryption</a></h1>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"menu_nav\">\r\n");
      out.write("        <ul>\r\n");
      out.write("          <li><a href=\"DataOwner.html\">DATA OWNER</a></li>\r\n");
      out.write("          <li><a href=\"CloudServer.html\">CLOUD SERVER</a></li>\r\n");
      out.write("          <li><a href=\"KDC.html\">AUTHORITY</a></li>\r\n");
      out.write("          <li><a href=\"EndUser.html\">END USER</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"content\">\r\n");
      out.write("    <div class=\"content_resize\">\r\n");
      out.write("      <div class=\"mainbar\">\r\n");
      out.write("        <div class=\"article\">\r\n");
      out.write("          <h2><span>Cloud Server Files    </span>::</h2>\r\n");
      out.write("          <div class=\"clr\"></div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"mainbar\">\r\n");
      out.write("          <div class=\"article\">\r\n");
      out.write("\r\n");
      out.write("\t\t    <table width=\"653\" border=\"1\" align=\"left\">\r\n");
      out.write("              <tr>\r\n");
      out.write("                <td width=\"87\" height=\"31\"><div align=\"center\"><span class=\"style5\">User ID </span></div></td>\r\n");
      out.write("                <td width=\"155\"><div align=\"center\"><span class=\"style5\">File Name </span></div></td>\r\n");
      out.write("\t\t\t\t<td width=\"161\"><div align=\"center\"><span class=\"style5\">Owner Name </span></div></td>\r\n");
      out.write("                <td width=\"222\"><div align=\"center\"><span class=\"style5\">Date &amp; Time</span></div></td>\r\n");
      out.write("              </tr>\r\n");
      out.write("              ");


	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        
          
      		
      		 
      		
      		String query="select * from CloudServer "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(5);
		
		
	
		
      out.write("\r\n");
      out.write("              <tr>\r\n");
      out.write("                <td height=\"29\"><div align=\"center\">");
      out.print(i);
      out.write("</div></td>\r\n");
      out.write("                <td><div align=\"center\"><a href=\"CloudConten.jsp?fname=");
      out.print(s2);
      out.write('"');
      out.write('>');
      out.print(s2);
      out.write("</a></div></td>\r\n");
      out.write("\t\t\t\t<td><div align=\"center\">");
      out.print(s3);
      out.write("</div></td>\r\n");
      out.write("                <td><div align=\"center\">");
      out.print(s4);
      out.write("</div></td>\r\n");
      out.write("              </tr>\r\n");
      out.write("              ");

	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }

      out.write("\r\n");
      out.write("            </table>\r\n");
      out.write("\t\t    <p>\r\n");
      out.write("\t\t    <p>&nbsp;  </p>\r\n");
      out.write("\t\t    <p><a href=\"CloudServerMain.html\">BACK</a></p>  \r\n");
      out.write("\t\t    <p>&nbsp;</p>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"sidebar\">\r\n");
      out.write("        <div class=\"searchform\">\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"clr\"></div>\r\n");
      out.write("        <div class=\"gadget\">\r\n");
      out.write("          <h2 class=\"star\"><span>Cloud Server  </span> Menu</h2>\r\n");
      out.write("          <div class=\"clr\"></div>\r\n");
      out.write("          <ul class=\"sb_menu\">\r\n");
      out.write("            <li><a href=\"ViewCloudFiles.jsp\">VIEW CLOUD FILES</a></li>\r\n");
      out.write("            <li><a href=\"ViewSK.jsp\">VIEW SECRET KEY GENERATED </a></li>\r\n");
      out.write("            <li><a href=\"ViewEndUsers.jsp\">VIEW END USERS </a></li>\r\n");
      out.write("            <li><a href=\"ViewDataOwners.jsp\">VIEW DATA OWNERS </a></li>\r\n");
      out.write("            <li><a href=\"ViewTransaction.jsp\">VIEW TRANSACTION </a></li>\r\n");
      out.write("            <li><a href=\"ViewAttackers.jsp\">VIEW ATTACKERS</a></li>\r\n");
      out.write("            <li><a href=\"index.html\">LOGOUT</a><a href=\"ViewAttackers.jsp\"></a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"clr\"></div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<div align=center></div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
